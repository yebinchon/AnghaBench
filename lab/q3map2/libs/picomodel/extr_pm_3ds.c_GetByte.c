
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picoByte_t ;
struct TYPE_3__ {scalar_t__ cofs; scalar_t__ maxofs; scalar_t__ bufptr; } ;
typedef TYPE_1__ T3dsLoaderPers ;



__attribute__((used)) static picoByte_t GetByte( T3dsLoaderPers *pers ){
 picoByte_t *value;


 if ( pers->cofs > pers->maxofs ) {
  return 0;
 }


 value = (picoByte_t *)( pers->bufptr + pers->cofs );
 pers->cofs += 1;
 return *value;
}
