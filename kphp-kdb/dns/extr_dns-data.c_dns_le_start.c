
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {scalar_t__ schema_id; scalar_t__ split_min; scalar_t__ split_max; scalar_t__ split_mod; scalar_t__ extra_bytes; } ;


 scalar_t__ DNS_SCHEMA_V1 ;
 int assert (int) ;
 int kprintf (char*) ;
 scalar_t__ log_split_max ;
 scalar_t__ log_split_min ;
 scalar_t__ log_split_mod ;

int dns_le_start (struct lev_start *E) {
  if (E->schema_id != DNS_SCHEMA_V1) {
    kprintf ("LEV_START schema_id isn't to DNS_SCHEMA_V1.\n");
    return -1;
  }
  if (E->extra_bytes) {
    kprintf ("LEV_START extra_bytes isn't equal to 0.\n");
    return -1;
  }
  log_split_min = E->split_min;
  log_split_max = E->split_max;
  log_split_mod = E->split_mod;
  assert (log_split_mod > 0 && log_split_min >= 0 && log_split_min + 1 == log_split_max && log_split_max <= log_split_mod);

  return 0;
}
