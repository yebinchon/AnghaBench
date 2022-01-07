
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int entity_t ;


 char* ValueForKey (int *,char*) ;
 int atof (char*) ;

vec_t FloatForKey (entity_t *ent, char *key)
{
 char *k;

 k = ValueForKey (ent, key);
 return atof(k);
}
