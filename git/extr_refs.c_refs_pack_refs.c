
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* pack_refs ) (struct ref_store*,unsigned int) ;} ;


 int stub1 (struct ref_store*,unsigned int) ;

int refs_pack_refs(struct ref_store *refs, unsigned int flags)
{
 return refs->be->pack_refs(refs, flags);
}
