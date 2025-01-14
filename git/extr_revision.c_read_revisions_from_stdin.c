
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;
struct rev_info {int dummy; } ;
struct argv_array {int dummy; } ;


 scalar_t__ EOF ;
 int REVARG_CANNOT_BE_FILENAME ;
 int die (char*,...) ;
 scalar_t__ handle_revision_arg (char*,struct rev_info*,int ,int ) ;
 int read_pathspec_from_stdin (struct strbuf*,struct argv_array*) ;
 int stdin ;
 scalar_t__ strbuf_getline (struct strbuf*,int ) ;
 int strbuf_init (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 int warn_on_object_refname_ambiguity ;

__attribute__((used)) static void read_revisions_from_stdin(struct rev_info *revs,
          struct argv_array *prune)
{
 struct strbuf sb;
 int seen_dashdash = 0;
 int save_warning;

 save_warning = warn_on_object_refname_ambiguity;
 warn_on_object_refname_ambiguity = 0;

 strbuf_init(&sb, 1000);
 while (strbuf_getline(&sb, stdin) != EOF) {
  int len = sb.len;
  if (!len)
   break;
  if (sb.buf[0] == '-') {
   if (len == 2 && sb.buf[1] == '-') {
    seen_dashdash = 1;
    break;
   }
   die("options not supported in --stdin mode");
  }
  if (handle_revision_arg(sb.buf, revs, 0,
     REVARG_CANNOT_BE_FILENAME))
   die("bad revision '%s'", sb.buf);
 }
 if (seen_dashdash)
  read_pathspec_from_stdin(&sb, prune);

 strbuf_release(&sb);
 warn_on_object_refname_ambiguity = save_warning;
}
