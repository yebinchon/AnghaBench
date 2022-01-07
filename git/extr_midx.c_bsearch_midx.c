
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct object_id {int hash; } ;
struct multi_pack_index {int chunk_oid_lookup; int chunk_oid_fanout; } ;
struct TYPE_2__ {int rawsz; } ;


 int bsearch_hash (int ,int ,int ,int ,int *) ;
 TYPE_1__* the_hash_algo ;

int bsearch_midx(const struct object_id *oid, struct multi_pack_index *m, uint32_t *result)
{
 return bsearch_hash(oid->hash, m->chunk_oid_fanout, m->chunk_oid_lookup,
       the_hash_algo->rawsz, result);
}
