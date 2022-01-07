
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct pretty_print_context {scalar_t__ fmt; } ;
struct commit {int parents; } ;
struct TYPE_2__ {int hexsz; } ;


 scalar_t__ CMIT_FMT_FULL ;
 scalar_t__ CMIT_FMT_FULLER ;
 scalar_t__ CMIT_FMT_RAW ;
 int GIT_MAX_HEXSZ ;
 int add_merge_info (struct pretty_print_context*,struct strbuf*,struct commit const*) ;
 unsigned int commit_list_count (int ) ;
 int die (char*) ;
 int get_one_line (char const*) ;
 int pp_user_info (struct pretty_print_context*,char*,struct strbuf*,char const*,char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_grow (struct strbuf*,int) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void pp_header(struct pretty_print_context *pp,
        const char *encoding,
        const struct commit *commit,
        const char **msg_p,
        struct strbuf *sb)
{
 int parents_shown = 0;

 for (;;) {
  const char *name, *line = *msg_p;
  int linelen = get_one_line(*msg_p);

  if (!linelen)
   return;
  *msg_p += linelen;

  if (linelen == 1)

   return;

  if (pp->fmt == CMIT_FMT_RAW) {
   strbuf_add(sb, line, linelen);
   continue;
  }

  if (starts_with(line, "parent ")) {
   if (linelen != the_hash_algo->hexsz + 8)
    die("bad parent line in commit");
   continue;
  }

  if (!parents_shown) {
   unsigned num = commit_list_count(commit->parents);

   strbuf_grow(sb, num * (GIT_MAX_HEXSZ + 10) + 20);
   add_merge_info(pp, sb, commit);
   parents_shown = 1;
  }






  if (skip_prefix(line, "author ", &name)) {
   strbuf_grow(sb, linelen + 80);
   pp_user_info(pp, "Author", sb, name, encoding);
  }
  if (skip_prefix(line, "committer ", &name) &&
      (pp->fmt == CMIT_FMT_FULL || pp->fmt == CMIT_FMT_FULLER)) {
   strbuf_grow(sb, linelen + 80);
   pp_user_info(pp, "Commit", sb, name, encoding);
  }
 }
}
