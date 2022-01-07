
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int (* ClearLoopingSounds ) (int ) ;} ;


 TYPE_1__ si ;
 int stub1 (int ) ;

void S_ClearLoopingSounds( qboolean killall )
{
 if( si.ClearLoopingSounds ) {
  si.ClearLoopingSounds( killall );
 }
}
