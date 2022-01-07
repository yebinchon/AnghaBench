
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rerere_id {int variant; TYPE_1__* collection; } ;
struct TYPE_2__ {int const* status; } ;


 int RR_HAS_POSTIMAGE ;
 int RR_HAS_PREIMAGE ;

__attribute__((used)) static int has_rerere_resolution(const struct rerere_id *id)
{
 const int both = RR_HAS_POSTIMAGE|RR_HAS_PREIMAGE;
 int variant = id->variant;

 if (variant < 0)
  return 0;
 return ((id->collection->status[variant] & both) == both);
}
