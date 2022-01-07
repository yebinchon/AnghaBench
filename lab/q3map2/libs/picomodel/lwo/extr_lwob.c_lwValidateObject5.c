
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 unsigned int ID_FORM ;
 unsigned int ID_LWOB ;
 int PICO_PMV_ERROR_IDENT ;
 int PICO_PMV_ERROR_MEMORY ;
 int PICO_PMV_ERROR_SIZE ;
 int PICO_PMV_OK ;
 unsigned int getU4 (int *) ;
 int get_flen () ;
 int set_flen (int ) ;

int lwValidateObject5( char *filename, picoMemStream_t *fp, unsigned int *failID, int *failpos ){
 unsigned int id, formsize, type;




 if ( !fp ) {
  return PICO_PMV_ERROR_MEMORY;
 }



 set_flen( 0 );
 id = getU4( fp );
 formsize = getU4( fp );
 type = getU4( fp );
 if ( 12 != get_flen() ) {
  return PICO_PMV_ERROR_SIZE;
 }



 if ( id != ID_FORM || type != ID_LWOB ) {
  if ( failpos ) {
   *failpos = 12;
  }
  return PICO_PMV_ERROR_IDENT;
 }

 return PICO_PMV_OK;
}
