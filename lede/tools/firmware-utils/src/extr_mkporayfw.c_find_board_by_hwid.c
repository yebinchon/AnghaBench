
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct board_info {scalar_t__ hw_id; int * id; } ;


 struct board_info* boards ;

__attribute__((used)) static struct board_info *find_board_by_hwid(uint32_t hw_id)
{
 struct board_info *board;

 for (board = boards; board->id != ((void*)0); board++) {
  if (hw_id == board->hw_id)
   return board;
 };

 return ((void*)0);
}
