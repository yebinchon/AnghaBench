
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entropy_store {size_t entropy_count; TYPE_1__* poolinfo; int pull; } ;
struct TYPE_2__ {size_t poolfracbits; } ;


 int ENTROPY_SHIFT ;
 int _xfer_secondary_pool (struct entropy_store*,size_t) ;

__attribute__((used)) static void xfer_secondary_pool(struct entropy_store *r, size_t nbytes)
{
 if (!r->pull ||
     r->entropy_count >= (nbytes << (ENTROPY_SHIFT + 3)) ||
     r->entropy_count > r->poolinfo->poolfracbits)
  return;

 _xfer_secondary_pool(r, nbytes);
}
