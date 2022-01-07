
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_2__ {int (* StartLocalSound ) (int ,int) ;} ;


 TYPE_1__ si ;
 int stub1 (int ,int) ;

void S_StartLocalSound( sfxHandle_t sfx, int channelNum )
{
 if( si.StartLocalSound ) {
  si.StartLocalSound( sfx, channelNum );
 }
}
