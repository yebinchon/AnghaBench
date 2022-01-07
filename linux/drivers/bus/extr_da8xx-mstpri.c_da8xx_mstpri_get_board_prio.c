
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_mstpri_board_priorities {int board; } ;


 int ARRAY_SIZE (struct da8xx_mstpri_board_priorities*) ;
 struct da8xx_mstpri_board_priorities* da8xx_mstpri_board_confs ;
 scalar_t__ of_machine_is_compatible (int ) ;

__attribute__((used)) static const struct da8xx_mstpri_board_priorities *
da8xx_mstpri_get_board_prio(void)
{
 const struct da8xx_mstpri_board_priorities *board_prio;
 int i;

 for (i = 0; i < ARRAY_SIZE(da8xx_mstpri_board_confs); i++) {
  board_prio = &da8xx_mstpri_board_confs[i];

  if (of_machine_is_compatible(board_prio->board))
   return board_prio;
 }

 return ((void*)0);
}
