
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_arch_supported () ;
 int get_num_brps () ;
 int get_num_wrps () ;
 int pr_warn (char*,int) ;

int hw_breakpoint_slots(int type)
{
 if (!debug_arch_supported())
  return 0;





 switch (type) {
 case 128:
  return get_num_brps();
 case 129:
  return get_num_wrps();
 default:
  pr_warn("unknown slot type: %d\n", type);
  return 0;
 }
}
