
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double* vec4_t ;


 int ARMOR_PROTECTION ;
 int VectorClear (double*) ;

void CG_GetColorForHealth( int health, int armor, vec4_t hcolor ) {
 int count;
 int max;



 if ( health <= 0 ) {
  VectorClear( hcolor );
  hcolor[3] = 1;
  return;
 }
 count = armor;
 max = health * ARMOR_PROTECTION / ( 1.0 - ARMOR_PROTECTION );
 if ( max < count ) {
  count = max;
 }
 health += count;


 hcolor[0] = 1.0;
 hcolor[3] = 1.0;
 if ( health >= 100 ) {
  hcolor[2] = 1.0;
 } else if ( health < 66 ) {
  hcolor[2] = 0;
 } else {
  hcolor[2] = ( health - 66 ) / 33.0;
 }

 if ( health > 60 ) {
  hcolor[1] = 1.0;
 } else if ( health < 30 ) {
  hcolor[1] = 0;
 } else {
  hcolor[1] = ( health - 30 ) / 30.0;
 }
}
