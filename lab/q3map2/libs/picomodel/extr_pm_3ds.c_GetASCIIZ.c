
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* bufptr; scalar_t__ cofs; scalar_t__ maxofs; } ;
typedef TYPE_1__ T3dsLoaderPers ;



__attribute__((used)) static int GetASCIIZ( T3dsLoaderPers *pers, char *dest, int max ){
 int pos = 0;
 int ch;

 for (;; )
 {
  ch = pers->bufptr[ pers->cofs++ ];
  if ( ch == '\0' ) {
   break;
  }
  if ( pers->cofs >= pers->maxofs ) {
   dest[ pos ] = '\0';
   return 0;
  }
  dest[ pos++ ] = ch;
  if ( pos >= max ) {
   break;
  }
 }
 dest[ pos ] = '\0';
 return 1;
}
