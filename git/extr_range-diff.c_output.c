
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct patch_util {int shown; scalar_t__ matching; } ;
struct diff_options {int output_format; } ;
struct TYPE_2__ {int string; struct patch_util* util; } ;


 int DIFF_FORMAT_NO_OUTPUT ;
 struct strbuf STRBUF_INIT ;
 int decimal_width (int) ;
 int output_pair_header (struct diff_options*,int,struct strbuf*,struct strbuf*,struct patch_util*,struct patch_util*) ;
 int patch_diff (int ,int ,struct diff_options*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void output(struct string_list *a, struct string_list *b,
     struct diff_options *diffopt)
{
 struct strbuf buf = STRBUF_INIT, dashes = STRBUF_INIT;
 int patch_no_width = decimal_width(1 + (a->nr > b->nr ? a->nr : b->nr));
 int i = 0, j = 0;
 while (i < a->nr || j < b->nr) {
  struct patch_util *a_util, *b_util;
  a_util = i < a->nr ? a->items[i].util : ((void*)0);
  b_util = j < b->nr ? b->items[j].util : ((void*)0);


  while (i < a->nr && a_util->shown)
   a_util = ++i < a->nr ? a->items[i].util : ((void*)0);


  if (i < a->nr && a_util->matching < 0) {
   output_pair_header(diffopt, patch_no_width,
        &buf, &dashes, a_util, ((void*)0));
   i++;
   continue;
  }


  while (j < b->nr && b_util->matching < 0) {
   output_pair_header(diffopt, patch_no_width,
        &buf, &dashes, ((void*)0), b_util);
   b_util = ++j < b->nr ? b->items[j].util : ((void*)0);
  }


  if (j < b->nr) {
   a_util = a->items[b_util->matching].util;
   output_pair_header(diffopt, patch_no_width,
        &buf, &dashes, a_util, b_util);
   if (!(diffopt->output_format & DIFF_FORMAT_NO_OUTPUT))
    patch_diff(a->items[b_util->matching].string,
        b->items[j].string, diffopt);
   a_util->shown = 1;
   j++;
  }
 }
 strbuf_release(&buf);
 strbuf_release(&dashes);
}
