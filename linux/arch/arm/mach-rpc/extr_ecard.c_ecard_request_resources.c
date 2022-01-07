
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* driver; } ;
struct expansion_card {TYPE_2__ dev; } ;
struct TYPE_3__ {int name; } ;


 int EBUSY ;
 int ECARD_NUM_RESOURCES ;
 scalar_t__ ecard_resource_end (struct expansion_card*,int) ;
 int ecard_resource_len (struct expansion_card*,int) ;
 int ecard_resource_start (struct expansion_card*,int) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,int ) ;

int ecard_request_resources(struct expansion_card *ec)
{
 int i, err = 0;

 for (i = 0; i < ECARD_NUM_RESOURCES; i++) {
  if (ecard_resource_end(ec, i) &&
      !request_mem_region(ecard_resource_start(ec, i),
     ecard_resource_len(ec, i),
     ec->dev.driver->name)) {
   err = -EBUSY;
   break;
  }
 }

 if (err) {
  while (i--)
   if (ecard_resource_end(ec, i))
    release_mem_region(ecard_resource_start(ec, i),
         ecard_resource_len(ec, i));
 }
 return err;
}
