
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 void* ht_general_stats ;
 int inc_si32 (void*,char*,int) ;

int
ht_insert_genstats_accumulated_time (time_t elapsed)
{
  void *hash = ht_general_stats;

  if (!hash)
    return 0;

  return inc_si32 (hash, "accumulated_time", (int) elapsed) != -1;
}
