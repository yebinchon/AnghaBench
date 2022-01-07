
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
typedef int sfxHandle_t ;
struct TYPE_2__ {int (* AddRealLoopingSound ) (int,int const,int const,int ) ;} ;


 TYPE_1__ si ;
 int stub1 (int,int const,int const,int ) ;

void S_AddRealLoopingSound( int entityNum, const vec3_t origin,
  const vec3_t velocity, sfxHandle_t sfx )
{
 if( si.AddRealLoopingSound ) {
  si.AddRealLoopingSound( entityNum, origin, velocity, sfx );
 }
}
