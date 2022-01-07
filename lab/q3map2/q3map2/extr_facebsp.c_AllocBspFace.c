
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int face_t ;


 int memset (int *,int ,int) ;
 int * safe_malloc (int) ;

face_t *AllocBspFace( void ) {
 face_t *f;

 f = safe_malloc( sizeof( *f ) );
 memset( f, 0, sizeof( *f ) );

 return f;
}
