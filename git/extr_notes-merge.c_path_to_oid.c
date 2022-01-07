
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int hexsz; } ;


 int GIT_MAX_HEXSZ ;
 int get_oid_hex (char*,struct object_id*) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int path_to_oid(const char *path, struct object_id *oid)
{
 char hex_oid[GIT_MAX_HEXSZ];
 int i = 0;
 while (*path && i < the_hash_algo->hexsz) {
  if (*path != '/')
   hex_oid[i++] = *path;
  path++;
 }
 if (*path || i != the_hash_algo->hexsz)
  return -1;
 return get_oid_hex(hex_oid, oid);
}
