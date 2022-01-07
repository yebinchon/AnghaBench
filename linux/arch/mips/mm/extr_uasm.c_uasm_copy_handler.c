
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;


 int memcpy (int *,int *,int) ;
 int uasm_move_labels (struct uasm_label*,int *,int *,long) ;
 int uasm_move_relocs (struct uasm_reloc*,int *,int *,long) ;

void uasm_copy_handler(struct uasm_reloc *rel, struct uasm_label *lab,
    u32 *first, u32 *end, u32 *target)
{
 long off = (long)(target - first);

 memcpy(target, first, (end - first) * sizeof(u32));

 uasm_move_relocs(rel, first, end, off);
 uasm_move_labels(lab, first, end, off);
}
