
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double* vec3_t ;
typedef int entity_t ;


 char* ValueForKey (int const*,char const*) ;
 int sscanf (char const*,char*,double*,double*,double*) ;

void GetVectorForKey( const entity_t *ent, const char *key, vec3_t vec ){
 const char *k;
 double v1, v2, v3;



 k = ValueForKey( ent, key );


 v1 = v2 = v3 = 0.0;
 sscanf( k, "%lf %lf %lf", &v1, &v2, &v3 );
 vec[ 0 ] = v1;
 vec[ 1 ] = v2;
 vec[ 2 ] = v3;
}
