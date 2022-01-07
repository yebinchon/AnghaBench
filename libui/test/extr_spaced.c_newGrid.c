
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiGrid ;


 int append (int *,int ) ;
 int grid ;
 int * uiNewGrid () ;

uiGrid *newGrid(void)
{
 uiGrid *g;

 g = uiNewGrid();
 append(g, grid);
 return g;
}
