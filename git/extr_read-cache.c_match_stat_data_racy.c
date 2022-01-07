
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_data {int dummy; } ;
struct stat {int dummy; } ;
struct index_state {int dummy; } ;


 int MTIME_CHANGED ;
 scalar_t__ is_racy_stat (struct index_state const*,struct stat_data const*) ;
 int match_stat_data (struct stat_data const*,struct stat*) ;

int match_stat_data_racy(const struct index_state *istate,
    const struct stat_data *sd, struct stat *st)
{
 if (is_racy_stat(istate, sd))
  return MTIME_CHANGED;
 return match_stat_data(sd, st);
}
