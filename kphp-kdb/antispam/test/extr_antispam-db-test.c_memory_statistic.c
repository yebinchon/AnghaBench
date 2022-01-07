
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_time () ;
 int dl_get_memory_used () ;
 int dyn_used_memory () ;
 int st_printf (char*,int ,int ,int ) ;

__attribute__((used)) static void memory_statistic () {
  st_printf ("[%6.2f] Used z-memory = $1%ld$^, Used dl-memory = $1%lld$^\n", current_time(), dyn_used_memory(), dl_get_memory_used());
}
