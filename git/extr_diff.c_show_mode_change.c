
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct diff_options {int dummy; } ;
struct diff_filepair {TYPE_2__* two; TYPE_1__* one; } ;
struct TYPE_4__ {scalar_t__ mode; int path; } ;
struct TYPE_3__ {scalar_t__ mode; } ;


 int DIFF_SYMBOL_SUMMARY ;
 struct strbuf STRBUF_INIT ;
 int emit_diff_symbol (struct diff_options*,int ,int ,int ,int ) ;
 int quote_c_style (int ,struct strbuf*,int *,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,scalar_t__,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void show_mode_change(struct diff_options *opt, struct diff_filepair *p,
  int show_name)
{
 if (p->one->mode && p->two->mode && p->one->mode != p->two->mode) {
  struct strbuf sb = STRBUF_INIT;
  strbuf_addf(&sb, " mode change %06o => %06o",
       p->one->mode, p->two->mode);
  if (show_name) {
   strbuf_addch(&sb, ' ');
   quote_c_style(p->two->path, &sb, ((void*)0), 0);
  }
  strbuf_addch(&sb, '\n');
  emit_diff_symbol(opt, DIFF_SYMBOL_SUMMARY,
     sb.buf, sb.len, 0);
  strbuf_release(&sb);
 }
}
