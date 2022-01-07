
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_label {int lab; int * addr; } ;



void uasm_build_label(struct uasm_label **lab, u32 *addr, int lid)
{
 (*lab)->addr = addr;
 (*lab)->lab = lid;
 (*lab)++;
}
