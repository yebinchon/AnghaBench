
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct emit_callback {unsigned int ws_rule; int blank_at_eof_in_preimage; int blank_at_eof_in_postimage; } ;
struct TYPE_5__ {int size; int ptr; } ;
typedef TYPE_1__ mmfile_t ;


 int count_lines (int ,int ) ;
 int count_trailing_blank (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void check_blank_at_eof(mmfile_t *mf1, mmfile_t *mf2,
          struct emit_callback *ecbdata)
{
 int l1, l2, at;
 unsigned ws_rule = ecbdata->ws_rule;
 l1 = count_trailing_blank(mf1, ws_rule);
 l2 = count_trailing_blank(mf2, ws_rule);
 if (l2 <= l1) {
  ecbdata->blank_at_eof_in_preimage = 0;
  ecbdata->blank_at_eof_in_postimage = 0;
  return;
 }
 at = count_lines(mf1->ptr, mf1->size);
 ecbdata->blank_at_eof_in_preimage = (at - l1) + 1;

 at = count_lines(mf2->ptr, mf2->size);
 ecbdata->blank_at_eof_in_postimage = (at - l2) + 1;
}
