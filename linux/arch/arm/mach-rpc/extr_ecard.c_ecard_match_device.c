
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int manufacturer; scalar_t__ product; } ;
struct expansion_card {TYPE_1__ cid; } ;
struct ecard_id {int manufacturer; scalar_t__ product; } ;



__attribute__((used)) static const struct ecard_id *
ecard_match_device(const struct ecard_id *ids, struct expansion_card *ec)
{
 int i;

 for (i = 0; ids[i].manufacturer != 65535; i++)
  if (ec->cid.manufacturer == ids[i].manufacturer &&
      ec->cid.product == ids[i].product)
   return ids + i;

 return ((void*)0);
}
