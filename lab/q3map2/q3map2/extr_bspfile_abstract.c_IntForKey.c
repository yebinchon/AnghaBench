
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entity_t ;


 char* ValueForKey (int const*,char const*) ;
 int atoi (char const*) ;

int IntForKey( const entity_t *ent, const char *key ){
 const char *k;


 k = ValueForKey( ent, key );
 return atoi( k );
}
