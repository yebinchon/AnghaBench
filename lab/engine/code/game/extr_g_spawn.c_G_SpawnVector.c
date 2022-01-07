
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int G_SpawnString (char const*,char const*,char**) ;
 int sscanf (char*,char*,float*,float*,float*) ;

qboolean G_SpawnVector( const char *key, const char *defaultString, float *out ) {
 char *s;
 qboolean present;

 present = G_SpawnString( key, defaultString, &s );
 sscanf( s, "%f %f %f", &out[0], &out[1], &out[2] );
 return present;
}
