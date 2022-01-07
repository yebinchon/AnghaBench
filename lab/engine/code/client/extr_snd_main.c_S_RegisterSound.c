
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxHandle_t ;
typedef int qboolean ;
struct TYPE_2__ {int (* RegisterSound ) (char const*,int ) ;} ;


 TYPE_1__ si ;
 int stub1 (char const*,int ) ;

sfxHandle_t S_RegisterSound( const char *sample, qboolean compressed )
{
 if( si.RegisterSound ) {
  return si.RegisterSound( sample, compressed );
 } else {
  return 0;
 }
}
