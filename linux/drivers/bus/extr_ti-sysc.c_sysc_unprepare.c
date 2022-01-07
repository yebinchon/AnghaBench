
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int * clocks; } ;


 int IS_ERR_OR_NULL (int ) ;
 int SYSC_MAX_CLOCKS ;
 int clk_unprepare (int ) ;

__attribute__((used)) static void sysc_unprepare(struct sysc *ddata)
{
 int i;

 if (!ddata->clocks)
  return;

 for (i = 0; i < SYSC_MAX_CLOCKS; i++) {
  if (!IS_ERR_OR_NULL(ddata->clocks[i]))
   clk_unprepare(ddata->clocks[i]);
 }
}
