
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
typedef int sfxHandle_t ;
struct TYPE_2__ {int (* StartSound ) (int ,int,int,int ) ;} ;


 TYPE_1__ si ;
 int stub1 (int ,int,int,int ) ;

void S_StartSound( vec3_t origin, int entnum, int entchannel, sfxHandle_t sfx )
{
 if( si.StartSound ) {
  si.StartSound( origin, entnum, entchannel, sfx );
 }
}
