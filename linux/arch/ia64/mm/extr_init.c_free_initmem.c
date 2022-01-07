
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __init_begin ;
 int __init_end ;
 int free_reserved_area (int ,int ,int,char*) ;
 int ia64_imva (int ) ;

void
free_initmem (void)
{
 free_reserved_area(ia64_imva(__init_begin), ia64_imva(__init_end),
      -1, "unused kernel");
}
