
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {int (* UpdateEntityPosition ) (int,int const) ;} ;


 TYPE_1__ si ;
 int stub1 (int,int const) ;

void S_UpdateEntityPosition( int entityNum, const vec3_t origin )
{
 if( si.UpdateEntityPosition ) {
  si.UpdateEntityPosition( entityNum, origin );
 }
}
