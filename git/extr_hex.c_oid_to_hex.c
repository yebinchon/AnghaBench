
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;


 char* hash_to_hex_algop (int ,int ) ;
 int the_hash_algo ;

char *oid_to_hex(const struct object_id *oid)
{
 return hash_to_hex_algop(oid->hash, the_hash_algo);
}
