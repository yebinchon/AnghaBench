
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_t ;
struct lev_start {scalar_t__ schema_id; scalar_t__ split_min; scalar_t__ split_max; scalar_t__ split_mod; int extra_bytes; int* str; } ;
struct lev_lists_start_ext {int kludge_magic; scalar_t__ schema_id; int list_id_ints; int object_id_ints; int value_ints; int extra_mask; } ;


 scalar_t__ LISTS_SCHEMA_CUR ;
 scalar_t__ LISTS_SCHEMA_V1 ;
 scalar_t__ LISTS_SCHEMA_V3 ;
 int LIST_ID_INTS ;
 int OBJECT_ID_INTS ;
 int assert (int) ;
 int compute_struct_sizes () ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int list_id_ints ;
 scalar_t__ log_split_max ;
 scalar_t__ log_split_min ;
 scalar_t__ log_split_mod ;
 int object_id_ints ;
 int stderr ;

__attribute__((used)) static int lists_le_start (struct lev_start *E) {
  if (E->schema_id != LISTS_SCHEMA_CUR



     ) {
    return -1;
  }
  log_split_min = E->split_min;
  log_split_max = E->split_max;
  log_split_mod = E->split_mod;
  assert (log_split_mod > 0 && log_split_min >= 0 && log_split_min + 1 == log_split_max && log_split_max <= log_split_mod);

  assert (!list_id_ints && !object_id_ints);

  if (E->extra_bytes >= 6 && E->str[0] == 1) {
    struct lev_lists_start_ext *EX = (struct lev_lists_start_ext *) E;
    assert (EX->kludge_magic == 1 && EX->schema_id == LISTS_SCHEMA_V3);
    list_id_ints = EX->list_id_ints;
    object_id_ints = EX->object_id_ints;
    assert (EX->value_ints == sizeof (value_t) / 4);
    assert (!EX->extra_mask);
  } else {
    list_id_ints = LIST_ID_INTS;
    object_id_ints = OBJECT_ID_INTS;

  }


  assert (list_id_ints == 1 && object_id_ints == 1);


  compute_struct_sizes ();

  return 0;
}
