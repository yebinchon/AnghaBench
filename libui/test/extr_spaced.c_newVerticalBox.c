
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiBox ;


 int append (int *,int ) ;
 int box ;
 int * newvbox () ;
 int * stub1 () ;

uiBox *newVerticalBox(void)
{
 uiBox *b;

 b = (*newvbox)();
 append(b, box);
 return b;
}
