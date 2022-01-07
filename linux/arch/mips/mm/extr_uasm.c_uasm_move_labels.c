
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_label {scalar_t__ lab; int * addr; } ;


 scalar_t__ UASM_LABEL_INVALID ;

void uasm_move_labels(struct uasm_label *lab, u32 *first, u32 *end,
          long off)
{
 for (; lab->lab != UASM_LABEL_INVALID; lab++)
  if (lab->addr >= first && lab->addr < end)
   lab->addr += off;
}
