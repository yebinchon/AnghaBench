
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lv1_panic (int ) ;
 int printf (char*) ;

__attribute__((used)) static void ps3_exit(void)
{
 printf("ps3_exit\n");



 lv1_panic(0);
 while (1);
}
