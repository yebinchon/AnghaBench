
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packing_data {struct object_entry* ext_bases; scalar_t__ nr_ext; int alloc_ext; } ;
struct TYPE_3__ {int hash; } ;
struct TYPE_4__ {TYPE_1__ oid; } ;
struct object_entry {int preferred_base; int filled; int ext_base; int delta_idx; TYPE_2__ idx; } ;


 int ALLOC_GROW (struct object_entry*,scalar_t__,int ) ;
 int hashcpy (int ,unsigned char const*) ;
 int memset (struct object_entry*,int ,int) ;

void oe_set_delta_ext(struct packing_data *pdata,
        struct object_entry *delta,
        const unsigned char *sha1)
{
 struct object_entry *base;

 ALLOC_GROW(pdata->ext_bases, pdata->nr_ext + 1, pdata->alloc_ext);
 base = &pdata->ext_bases[pdata->nr_ext++];
 memset(base, 0, sizeof(*base));
 hashcpy(base->idx.oid.hash, sha1);


 base->preferred_base = 1;
 base->filled = 1;

 delta->ext_base = 1;
 delta->delta_idx = base - pdata->ext_bases + 1;
}
