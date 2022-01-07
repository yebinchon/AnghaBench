
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct diff_options {int dummy; } ;
struct diff_filepair {int status; int score; TYPE_1__* two; TYPE_1__* one; } ;
struct TYPE_2__ {int path; } ;






 int DIFF_SYMBOL_SUMMARY ;
 struct strbuf STRBUF_INIT ;
 int emit_diff_symbol (struct diff_options*,int ,int ,int ,int ) ;
 int quote_c_style (int ,struct strbuf*,int *,int ) ;
 int show_file_mode_name (struct diff_options*,char*,TYPE_1__*) ;
 int show_mode_change (struct diff_options*,struct diff_filepair*,int) ;
 int show_rename_copy (struct diff_options*,char*,struct diff_filepair*) ;
 int similarity_index (struct diff_filepair*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void diff_summary(struct diff_options *opt, struct diff_filepair *p)
{
 switch(p->status) {
 case 129:
  show_file_mode_name(opt, "delete", p->one);
  break;
 case 131:
  show_file_mode_name(opt, "create", p->two);
  break;
 case 130:
  show_rename_copy(opt, "copy", p);
  break;
 case 128:
  show_rename_copy(opt, "rename", p);
  break;
 default:
  if (p->score) {
   struct strbuf sb = STRBUF_INIT;
   strbuf_addstr(&sb, " rewrite ");
   quote_c_style(p->two->path, &sb, ((void*)0), 0);
   strbuf_addf(&sb, " (%d%%)\n", similarity_index(p));
   emit_diff_symbol(opt, DIFF_SYMBOL_SUMMARY,
      sb.buf, sb.len, 0);
   strbuf_release(&sb);
  }
  show_mode_change(opt, p, !p->score);
  break;
 }
}
