
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct cache_entry {int ce_stat_data; int ce_mode; } ;


 int S_ISGITLINK (int ) ;
 scalar_t__ is_racy_stat (struct index_state const*,int *) ;

int is_racy_timestamp(const struct index_state *istate,
        const struct cache_entry *ce)
{
 return (!S_ISGITLINK(ce->ce_mode) &&
  is_racy_stat(istate, &ce->ce_stat_data));
}
