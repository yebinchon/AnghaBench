
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numBots; int* sortedBotNums; } ;


 int UI_AddBotsMenu_SortCompare ;
 TYPE_1__ addBotsMenuInfo ;
 int qsort (int*,int,int,int ) ;

__attribute__((used)) static void UI_AddBotsMenu_GetSortedBotNums( void ) {
 int n;


 for( n = 0; n < addBotsMenuInfo.numBots; n++ ) {
  addBotsMenuInfo.sortedBotNums[n] = n;
 }

 qsort( addBotsMenuInfo.sortedBotNums, addBotsMenuInfo.numBots, sizeof(addBotsMenuInfo.sortedBotNums[0]), UI_AddBotsMenu_SortCompare );
}
