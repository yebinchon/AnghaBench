
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int scanhex (unsigned long*) ;
 int xmon_set_pagination_lpp (unsigned long) ;

__attribute__((used)) static void set_lpp_cmd(void)
{
 unsigned long lpp;

 if (!scanhex(&lpp)) {
  printf("Invalid number.\n");
  lpp = 0;
 }
 xmon_set_pagination_lpp(lpp);
}
