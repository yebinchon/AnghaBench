
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {scalar_t__ schema_id; scalar_t__ split_min; scalar_t__ split_max; scalar_t__ split_mod; int extra_bytes; int str; } ;


 scalar_t__ COPYEXEC_AUX_SCHEMA_V1 ;
 int assert (int) ;
 scalar_t__ aux_volume_id ;
 int exit (int) ;
 int kprintf (char*) ;
 scalar_t__ log_split_max ;
 scalar_t__ log_split_min ;
 scalar_t__ log_split_mod ;
 scalar_t__ main_volume_id ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static int copyexec_aux_le_start (struct lev_start *E) {
  if (E->schema_id != COPYEXEC_AUX_SCHEMA_V1) {
    return -1;
  }
  log_split_min = E->split_min;
  log_split_max = E->split_max;
  log_split_mod = E->split_mod;
  assert (E->extra_bytes == 8);
  assert (log_split_mod > 0 && log_split_min >= 0 && log_split_min + 1 == log_split_max && log_split_max <= log_split_mod);

  memcpy (&aux_volume_id, E->str, 8);
  if (main_volume_id && main_volume_id != aux_volume_id) {
    kprintf ("aux_volume_id isn't equal to main_volume_id");
    exit (1);
  }

  return 0;
}
