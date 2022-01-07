
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int id; } ;
typedef TYPE_3__ menucommon_s ;
struct TYPE_12__ {size_t curvalue; } ;
struct TYPE_11__ {int leaguename; } ;
struct TYPE_7__ {int buffer; } ;
struct TYPE_8__ {TYPE_1__ field; } ;
struct TYPE_10__ {TYPE_6__ list; TYPE_2__ rankname; } ;







 int K_DOWNARROW ;
 int K_UPARROW ;
 int QM_ACTIVATED ;
 int QM_GOTFOCUS ;
 int QM_LOSTFOCUS ;
 int Q_strncmp (int ,int ,int ) ;
 int ScrollList_Key (TYPE_6__*,int ) ;
 int SpecifyLeague_GetList () ;
 int UI_PopMenu () ;
 TYPE_5__* league_table ;
 int playername ;
 TYPE_4__ s_specifyleague ;
 int strlen (int ) ;
 int trap_Cvar_Set (char*,int ) ;

__attribute__((used)) static void SpecifyLeague_Event( void* ptr, int event )
{
 int id;
 id = ((menucommon_s*)ptr)->id;




 switch (id)
 {
  case 130:
   if( event == QM_GOTFOCUS ) {

   }
  break;

  case 128:
   if( event == QM_ACTIVATED )
    ScrollList_Key( &s_specifyleague.list, K_UPARROW );
  break;

  case 131:
   if( event == QM_ACTIVATED )
    ScrollList_Key( &s_specifyleague.list, K_DOWNARROW );
  break;

  case 129:
   if( (event == QM_LOSTFOCUS) &&
    (Q_strncmp(playername,
     s_specifyleague.rankname.field.buffer,
     strlen(s_specifyleague.rankname.field.buffer)) != 0))
   {
    SpecifyLeague_GetList();
   }
  break;

  case 132:
   if( event == QM_ACTIVATED )
   {
    trap_Cvar_Set( "sv_leagueName", league_table[s_specifyleague.list.curvalue].leaguename);
    UI_PopMenu();
   }
  break;
 }
}
