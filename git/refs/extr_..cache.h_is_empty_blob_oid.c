
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int empty_blob; } ;


 int oideq (struct object_id const*,int ) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static inline int is_empty_blob_oid(const struct object_id *oid)
{
 return oideq(oid, the_hash_algo->empty_blob);
}
