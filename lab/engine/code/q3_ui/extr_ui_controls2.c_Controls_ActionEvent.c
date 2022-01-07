
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_6__ {int anim; } ;
struct TYPE_5__ {int waitingforkey; } ;


 int ANIM_IDLE ;
 int Controls_Update () ;
 int Controls_UpdateModel (int ) ;
 int QM_ACTIVATED ;
 int QM_GOTFOCUS ;
 int QM_LOSTFOCUS ;
 TYPE_3__* g_bindings ;
 TYPE_2__ s_controls ;

__attribute__((used)) static void Controls_ActionEvent( void* ptr, int event )
{
 if (event == QM_LOSTFOCUS)
 {
  Controls_UpdateModel( ANIM_IDLE );
 }
 else if (event == QM_GOTFOCUS)
 {
  Controls_UpdateModel( g_bindings[((menucommon_s*)ptr)->id].anim );
 }
 else if ((event == QM_ACTIVATED) && !s_controls.waitingforkey)
 {
  s_controls.waitingforkey = 1;
  Controls_Update();
 }
}
