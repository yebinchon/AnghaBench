
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {scalar_t__ schema_id; scalar_t__ split_min; scalar_t__ split_max; scalar_t__ split_mod; int extra_bytes; int str; } ;


 scalar_t__ FILESYS_SCHEMA_V1 ;
 int assert (int) ;
 scalar_t__ log_split_max ;
 scalar_t__ log_split_min ;
 scalar_t__ log_split_mod ;
 int memcpy (long long*,int ,int) ;
 long long volume_id ;

__attribute__((used)) static int filesys_xfs_le_start (struct lev_start *E) {
  if (E->schema_id != FILESYS_SCHEMA_V1) {
    return -1;
  }
  long long l;
  log_split_min = E->split_min;
  log_split_max = E->split_max;
  log_split_mod = E->split_mod;
  assert (log_split_mod > 0 && log_split_min >= 0 && log_split_min + 1 == log_split_max && log_split_max <= log_split_mod);
  assert (E->extra_bytes == 8);
  memcpy (&l, E->str, 8);






  volume_id = l;
  return 0;
}
