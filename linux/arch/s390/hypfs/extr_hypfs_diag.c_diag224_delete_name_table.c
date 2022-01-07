
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ diag224_cpu_names ;
 int free_page (unsigned long) ;

__attribute__((used)) static void diag224_delete_name_table(void)
{
 free_page((unsigned long) diag224_cpu_names);
}
