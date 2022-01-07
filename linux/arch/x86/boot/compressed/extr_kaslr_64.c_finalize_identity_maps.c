
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int top_level_pgt ;
 int write_cr3 (int ) ;

void finalize_identity_maps(void)
{
 write_cr3(top_level_pgt);
}
