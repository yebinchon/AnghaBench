
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bot_input_t ;
struct TYPE_2__ {int maxclients; } ;


 int BLERR_NOERROR ;
 scalar_t__ GetClearedHunkMemory (int) ;
 int * botinputs ;
 TYPE_1__ botlibglobals ;

int EA_Setup(void)
{

 botinputs = (bot_input_t *) GetClearedHunkMemory(
         botlibglobals.maxclients * sizeof(bot_input_t));
 return BLERR_NOERROR;
}
