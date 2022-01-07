
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int check_cpu (int*,int*,int **) ;
 scalar_t__ check_knl_erratum () ;
 char* cpu_name (int) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int puts (char*) ;
 int show_cap_strs (int *) ;

int validate_cpu(void)
{
 u32 *err_flags;
 int cpu_level, req_level;

 check_cpu(&cpu_level, &req_level, &err_flags);

 if (cpu_level < req_level) {
  printf("This kernel requires an %s CPU, ",
         cpu_name(req_level));
  printf("but only detected an %s CPU.\n",
         cpu_name(cpu_level));
  return -1;
 }

 if (err_flags) {
  puts("This kernel requires the following features "
       "not present on the CPU:\n");
  show_cap_strs(err_flags);
  putchar('\n');
  return -1;
 } else if (check_knl_erratum()) {
  return -1;
 } else {
  return 0;
 }
}
