
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int * vec3_t ;
typedef int* m4x4_t ;
typedef int eulerOrder_t ;


 int DEG2RAD (int ) ;
 double cos (int ) ;






 int m4x4_identity (int*) ;
 int m4x4_premultiply_by_m4x4 (int*,int*) ;
 double sin (int ) ;

void m4x4_rotation_for_vec3( m4x4_t matrix, const vec3_t euler, eulerOrder_t order ){
 double cx, sx, cy, sy, cz, sz;

 cx = cos( DEG2RAD( euler[0] ) );
 sx = sin( DEG2RAD( euler[0] ) );
 cy = cos( DEG2RAD( euler[1] ) );
 sy = sin( DEG2RAD( euler[1] ) );
 cz = cos( DEG2RAD( euler[2] ) );
 sz = sin( DEG2RAD( euler[2] ) );

 switch ( order )
 {
 case 133:



  {
   matrix[0] = (vec_t)( cy * cz );
   matrix[1] = (vec_t)( cy * sz );
   matrix[2] = (vec_t)-sy;
   matrix[4] = (vec_t)( sx * sy * cz + cx * -sz );
   matrix[5] = (vec_t)( sx * sy * sz + cx * cz );
   matrix[6] = (vec_t)( sx * cy );
   matrix[8] = (vec_t)( cx * sy * cz + sx * sz );
   matrix[9] = (vec_t)( cx * sy * sz + -sx * cz );
   matrix[10] = (vec_t)( cx * cy );
  }

  matrix[12] = matrix[13] = matrix[14] = matrix[3] = matrix[7] = matrix[11] = 0;
  matrix[15] = 1;
  break;

 case 130:
  m4x4_identity( matrix );
  matrix[0] = (vec_t) cy; matrix[2] = (vec_t)-sy;
  matrix[8] = (vec_t) sy; matrix[10] = (vec_t) cy;

  {
   m4x4_t temp;
   m4x4_identity( temp );
   temp[5] = (vec_t) cx; temp[6] = (vec_t) sx;
   temp[9] = (vec_t)-sx; temp[10] = (vec_t) cx;
   m4x4_premultiply_by_m4x4( matrix, temp );
   m4x4_identity( temp );
   temp[0] = (vec_t) cz; temp[1] = (vec_t) sz;
   temp[4] = (vec_t)-sz; temp[5] = (vec_t) cz;
   m4x4_premultiply_by_m4x4( matrix, temp );
  }
  break;

 case 129:
  m4x4_identity( matrix );
  matrix[0] = (vec_t) cz; matrix[1] = (vec_t) sz;
  matrix[4] = (vec_t)-sz; matrix[5] = (vec_t) cz;

  {
   m4x4_t temp;
   m4x4_identity( temp );
   temp[5] = (vec_t) cx; temp[6] = (vec_t) sx;
   temp[9] = (vec_t)-sx; temp[10] = (vec_t) cx;
   m4x4_premultiply_by_m4x4( matrix, temp );
   m4x4_identity( temp );
   temp[0] = (vec_t) cy; temp[2] = (vec_t)-sy;
   temp[8] = (vec_t) sy; temp[10] = (vec_t) cy;
   m4x4_premultiply_by_m4x4( matrix, temp );
  }
  break;

 case 132:
  m4x4_identity( matrix );
  matrix[5] = (vec_t) cx; matrix[6] = (vec_t) sx;
  matrix[9] = (vec_t)-sx; matrix[10] = (vec_t) cx;

  {
   m4x4_t temp;
   m4x4_identity( temp );
   temp[0] = (vec_t) cz; temp[1] = (vec_t) sz;
   temp[4] = (vec_t)-sz; temp[5] = (vec_t) cz;
   m4x4_premultiply_by_m4x4( matrix, temp );
   m4x4_identity( temp );
   temp[0] = (vec_t) cy; temp[2] = (vec_t)-sy;
   temp[8] = (vec_t) sy; temp[10] = (vec_t) cy;
   m4x4_premultiply_by_m4x4( matrix, temp );
  }
  break;

 case 131:
  {
   matrix[0] = (vec_t)( cy * cz + sx * sy * -sz );
   matrix[1] = (vec_t)( cy * sz + sx * sy * cz );
   matrix[2] = (vec_t)( -cx * sy );
   matrix[4] = (vec_t)( cx * -sz );
   matrix[5] = (vec_t)( cx * cz );
   matrix[6] = (vec_t)( sx );
   matrix[8] = (vec_t)( sy * cz + -sx * cy * -sz );
   matrix[9] = (vec_t)( sy * sz + -sx * cy * cz );
   matrix[10] = (vec_t)( cx * cy );
  }

  matrix[12] = matrix[13] = matrix[14] = matrix[3] = matrix[7] = matrix[11] = 0;
  matrix[15] = 1;
  break;

 case 128:


  {
   matrix[0] = (vec_t)( cy * cz );
   matrix[4] = (vec_t)( cy * -sz );
   matrix[8] = (vec_t)sy;
   matrix[1] = (vec_t)( sx * sy * cz + cx * sz );
   matrix[5] = (vec_t)( sx * sy * -sz + cx * cz );
   matrix[9] = (vec_t)( -sx * cy );
   matrix[2] = (vec_t)( cx * -sy * cz + sx * sz );
   matrix[6] = (vec_t)( cx * -sy * -sz + sx * cz );
   matrix[10] = (vec_t)( cx * cy );
  }

  matrix[12] = matrix[13] = matrix[14] = matrix[3] = matrix[7] = matrix[11] = 0;
  matrix[15] = 1;
  break;

 }

}
