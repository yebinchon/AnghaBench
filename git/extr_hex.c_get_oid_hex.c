
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;


 int get_sha1_hex (char const*,int ) ;

int get_oid_hex(const char *hex, struct object_id *oid)
{
 return get_sha1_hex(hex, oid->hash);
}
