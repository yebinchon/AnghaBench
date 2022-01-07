
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_pvr (int *) ;
 int pvr ;

int kgdb_arch_init(void)
{
 get_pvr(&pvr);
 return 0;
}
