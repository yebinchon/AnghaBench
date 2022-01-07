
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct merge_remote_desc {int name; } ;
struct merge_options {int obuf; TYPE_1__* priv; } ;
struct TYPE_4__ {int oid; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {int call_depth; } ;


 int DEFAULT_ABBREV ;
 int _ (char*) ;
 int find_commit_subject (char const*,char const**) ;
 int flush_output (struct merge_options*) ;
 char* get_commit_buffer (struct commit*,int *) ;
 struct merge_remote_desc* merge_remote_util (struct commit*) ;
 scalar_t__ parse_commit (struct commit*) ;
 int strbuf_add_unique_abbrev (int *,int *,int ) ;
 int strbuf_addch (int *,char) ;
 int strbuf_addchars (int *,char,int) ;
 int strbuf_addf (int *,char*,int,...) ;
 int strbuf_addstr (int *,int ) ;
 int unuse_commit_buffer (struct commit*,char const*) ;

__attribute__((used)) static void output_commit_title(struct merge_options *opt, struct commit *commit)
{
 struct merge_remote_desc *desc;

 strbuf_addchars(&opt->obuf, ' ', opt->priv->call_depth * 2);
 desc = merge_remote_util(commit);
 if (desc)
  strbuf_addf(&opt->obuf, "virtual %s\n", desc->name);
 else {
  strbuf_add_unique_abbrev(&opt->obuf, &commit->object.oid,
      DEFAULT_ABBREV);
  strbuf_addch(&opt->obuf, ' ');
  if (parse_commit(commit) != 0)
   strbuf_addstr(&opt->obuf, _("(bad commit)\n"));
  else {
   const char *title;
   const char *msg = get_commit_buffer(commit, ((void*)0));
   int len = find_commit_subject(msg, &title);
   if (len)
    strbuf_addf(&opt->obuf, "%.*s\n", len, title);
   unuse_commit_buffer(commit, msg);
  }
 }
 flush_output(opt);
}
