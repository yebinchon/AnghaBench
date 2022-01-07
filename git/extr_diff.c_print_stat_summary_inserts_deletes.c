
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int * buf; } ;
struct diff_options {int dummy; } ;


 int DIFF_SYMBOL_STATS_SUMMARY_INSERTS_DELETES ;
 int DIFF_SYMBOL_STATS_SUMMARY_NO_FILES ;
 struct strbuf STRBUF_INIT ;
 int assert (int) ;
 int emit_diff_symbol (struct diff_options*,int ,int *,int ,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void print_stat_summary_inserts_deletes(struct diff_options *options,
  int files, int insertions, int deletions)
{
 struct strbuf sb = STRBUF_INIT;

 if (!files) {
  assert(insertions == 0 && deletions == 0);
  emit_diff_symbol(options, DIFF_SYMBOL_STATS_SUMMARY_NO_FILES,
     ((void*)0), 0, 0);
  return;
 }

 strbuf_addf(&sb,
      (files == 1) ? " %d file changed" : " %d files changed",
      files);
 if (insertions || deletions == 0) {
  strbuf_addf(&sb,
       (insertions == 1) ? ", %d insertion(+)" : ", %d insertions(+)",
       insertions);
 }

 if (deletions || insertions == 0) {
  strbuf_addf(&sb,
       (deletions == 1) ? ", %d deletion(-)" : ", %d deletions(-)",
       deletions);
 }
 strbuf_addch(&sb, '\n');
 emit_diff_symbol(options, DIFF_SYMBOL_STATS_SUMMARY_INSERTS_DELETES,
    sb.buf, sb.len, 0);
 strbuf_release(&sb);
}
