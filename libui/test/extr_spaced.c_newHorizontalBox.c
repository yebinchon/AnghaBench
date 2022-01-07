
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiBox ;


 int append (int *,int ) ;
 int box ;
 int * newhbox () ;
 int * stub1 () ;

uiBox *newHorizontalBox(void)
{
 uiBox *b;

 b = (*newhbox)();
 append(b, box);
 return b;
}
