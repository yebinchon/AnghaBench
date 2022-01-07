
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int hash; } ;
struct TYPE_2__ {int rawsz; } ;


 unsigned int memhash (int ,int ) ;
 unsigned int strhash (char const*) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static unsigned int hash_oid_string(const struct object_id *oid,
        const char *string)
{
 return memhash(oid->hash, the_hash_algo->rawsz) + strhash(string);
}
