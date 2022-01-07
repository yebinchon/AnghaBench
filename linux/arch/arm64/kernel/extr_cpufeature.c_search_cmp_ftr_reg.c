
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __ftr_reg_entry {scalar_t__ sys_id; } ;



__attribute__((used)) static int search_cmp_ftr_reg(const void *id, const void *regp)
{
 return (int)(unsigned long)id - (int)((const struct __ftr_reg_entry *)regp)->sys_id;
}
