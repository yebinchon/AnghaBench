
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_num_brps () ;
 int get_num_wrps () ;
 int pr_warning (char*,int) ;

int hw_breakpoint_slots(int type)
{




 switch (type) {
 case 128:
  return get_num_brps();
 case 129:
  return get_num_wrps();
 default:
  pr_warning("unknown slot type: %d\n", type);
  return 0;
 }
}
