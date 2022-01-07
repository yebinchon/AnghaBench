
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiAreaHandler ;
typedef int uiArea ;


 int printf (char*,int) ;

__attribute__((used)) static void handlerMouseCrossed(uiAreaHandler *ah, uiArea *a, int left)
{
 printf("mouse crossed %d\n", left);
}
