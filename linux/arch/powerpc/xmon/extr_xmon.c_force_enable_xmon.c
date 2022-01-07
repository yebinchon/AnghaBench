
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int xmon_on ;

__attribute__((used)) static inline void force_enable_xmon(void)
{

 if (!xmon_on) {
  printf("xmon: Enabling debugger hooks\n");
  xmon_on = 1;
 }
}
