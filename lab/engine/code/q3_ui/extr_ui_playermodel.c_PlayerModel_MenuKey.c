
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_7__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_9__ {int cursor; } ;
struct TYPE_8__ {int modelpage; TYPE_3__ menu; int numpages; int nummodels; } ;


 int ID_PLAYERPIC0 ;






 int MAX_MODELSPERPAGE ;
 int Menu_DefaultKey (TYPE_3__*,int) ;
 TYPE_1__* Menu_ItemAtCursor (TYPE_3__*) ;
 int Menu_SetCursor (TYPE_3__*,int ) ;
 int PlayerModel_SaveChanges () ;
 int PlayerModel_UpdateGrid () ;
 int menu_buzz_sound ;
 int menu_move_sound ;
 TYPE_2__ s_playermodel ;

__attribute__((used)) static sfxHandle_t PlayerModel_MenuKey( int key )
{
 menucommon_s* m;
 int picnum;

 switch (key)
 {
  case 132:
  case 130:
   m = Menu_ItemAtCursor(&s_playermodel.menu);
   picnum = m->id - ID_PLAYERPIC0;
   if (picnum >= 0 && picnum <= 15)
   {
    if (picnum > 0)
    {
     Menu_SetCursor(&s_playermodel.menu,s_playermodel.menu.cursor-1);
     return (menu_move_sound);

    }
    else if (s_playermodel.modelpage > 0)
    {
     s_playermodel.modelpage--;
     Menu_SetCursor(&s_playermodel.menu,s_playermodel.menu.cursor+15);
     PlayerModel_UpdateGrid();
     return (menu_move_sound);
    }
    else
     return (menu_buzz_sound);
   }
   break;

  case 131:
  case 128:
   m = Menu_ItemAtCursor(&s_playermodel.menu);
   picnum = m->id - ID_PLAYERPIC0;
   if (picnum >= 0 && picnum <= 15)
   {
    if ((picnum < 15) && (s_playermodel.modelpage*MAX_MODELSPERPAGE + picnum+1 < s_playermodel.nummodels))
    {
     Menu_SetCursor(&s_playermodel.menu,s_playermodel.menu.cursor+1);
     return (menu_move_sound);
    }
    else if ((picnum == 15) && (s_playermodel.modelpage < s_playermodel.numpages-1))
    {
     s_playermodel.modelpage++;
     Menu_SetCursor(&s_playermodel.menu,s_playermodel.menu.cursor-15);
     PlayerModel_UpdateGrid();
     return (menu_move_sound);
    }
    else
     return (menu_buzz_sound);
   }
   break;

  case 129:
  case 133:
   PlayerModel_SaveChanges();
   break;
 }

 return ( Menu_DefaultKey( &s_playermodel.menu, key ) );
}
