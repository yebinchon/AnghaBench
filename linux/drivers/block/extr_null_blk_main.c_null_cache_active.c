
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nullb {TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 int NULLB_DEV_FL_CACHE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int null_cache_active(struct nullb *nullb)
{
 return test_bit(NULLB_DEV_FL_CACHE, &nullb->dev->flags);
}
