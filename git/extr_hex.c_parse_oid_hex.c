
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int hexsz; } ;


 int get_oid_hex (char const*,struct object_id*) ;
 TYPE_1__* the_hash_algo ;

int parse_oid_hex(const char *hex, struct object_id *oid, const char **end)
{
 int ret = get_oid_hex(hex, oid);
 if (!ret)
  *end = hex + the_hash_algo->hexsz;
 return ret;
}
