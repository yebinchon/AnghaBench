
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int n_blacklist_ev; scalar_t__* blacklist_ev; } ;


 TYPE_1__* ppmu ;

__attribute__((used)) static bool is_event_blacklisted(u64 ev)
{
 int i;

 for (i=0; i < ppmu->n_blacklist_ev; i++) {
  if (ppmu->blacklist_ev[i] == ev)
   return 1;
 }

 return 0;
}
