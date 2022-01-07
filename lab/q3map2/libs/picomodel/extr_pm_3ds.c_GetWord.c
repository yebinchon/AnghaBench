
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cofs; scalar_t__ maxofs; scalar_t__ bufptr; } ;
typedef TYPE_1__ T3dsLoaderPers ;


 int _pico_little_short (unsigned short) ;

__attribute__((used)) static int GetWord( T3dsLoaderPers *pers ){
 unsigned short *value;


 if ( pers->cofs > pers->maxofs ) {
  return 0;
 }


 value = (unsigned short *)( pers->bufptr + pers->cofs );
 pers->cofs += 2;
 return _pico_little_short( *value );
}
