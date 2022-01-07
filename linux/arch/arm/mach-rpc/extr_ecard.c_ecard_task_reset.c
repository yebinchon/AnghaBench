
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct expansion_card {int slot_no; int loader; struct resource* resource; scalar_t__ easi; } ;
struct ecard_request {struct expansion_card* ec; } ;


 size_t ECARD_RES_EASI ;
 size_t ECARD_RES_IOCSYNC ;
 size_t ECARD_RES_MEMC ;
 int ecard_loader_reset (int ,int ) ;

__attribute__((used)) static void ecard_task_reset(struct ecard_request *req)
{
 struct expansion_card *ec = req->ec;
 struct resource *res;

 res = ec->slot_no == 8
  ? &ec->resource[ECARD_RES_MEMC]
  : ec->easi
    ? &ec->resource[ECARD_RES_EASI]
    : &ec->resource[ECARD_RES_IOCSYNC];

 ecard_loader_reset(res->start, ec->loader);
}
