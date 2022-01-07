
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_4__ {int modelpage; int numpages; } ;





 int PlayerModel_SaveChanges () ;
 int PlayerModel_UpdateGrid () ;
 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 TYPE_2__ s_playermodel ;

__attribute__((used)) static void PlayerModel_MenuEvent( void* ptr, int event )
{
 if (event != QM_ACTIVATED)
  return;

 switch (((menucommon_s*)ptr)->id)
 {
  case 128:
   if (s_playermodel.modelpage > 0)
   {
    s_playermodel.modelpage--;
    PlayerModel_UpdateGrid();
   }
   break;

  case 129:
   if (s_playermodel.modelpage < s_playermodel.numpages-1)
   {
    s_playermodel.modelpage++;
    PlayerModel_UpdateGrid();
   }
   break;

  case 130:
   PlayerModel_SaveChanges();
   UI_PopMenu();
   break;
 }
}
