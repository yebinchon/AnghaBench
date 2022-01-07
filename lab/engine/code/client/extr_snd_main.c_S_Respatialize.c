
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {int (* Respatialize ) (int,int const,int *,int) ;} ;


 TYPE_1__ si ;
 int stub1 (int,int const,int *,int) ;

void S_Respatialize( int entityNum, const vec3_t origin,
  vec3_t axis[3], int inwater )
{
 if( si.Respatialize ) {
  si.Respatialize( entityNum, origin, axis, inwater );
 }
}
