
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sfxHandle_t ;
typedef int menuframework_s ;
struct TYPE_4__ {int flags; int (* callback ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ menucommon_s ;


 int QMF_SILENT ;
 int QM_ACTIVATED ;
 int menu_move_sound ;
 int stub1 (TYPE_1__*,int ) ;

sfxHandle_t Menu_ActivateItem( menuframework_s *s, menucommon_s* item ) {
 if ( item->callback ) {
  item->callback( item, QM_ACTIVATED );
  if( !( item->flags & QMF_SILENT ) ) {
   return menu_move_sound;
  }
 }

 return 0;
}
