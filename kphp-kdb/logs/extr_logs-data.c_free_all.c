
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int event ;
struct TYPE_3__ {int * name; } ;


 int FN ;
 int MAX_EV ;
 int MAX_EVENT_MEM ;
 size_t MAX_HISTORY ;
 int MAX_TYPE ;
 int ans ;
 int assert (int) ;
 int * color_int ;
 int * color_ll ;
 int dl_free (int ,int) ;
 scalar_t__ dl_get_memory_used () ;
 int dl_strfree (scalar_t__) ;
 int dump_expr ;
 scalar_t__ dump_mode ;
 int * dump_query ;
 int eq ;
 scalar_t__ eq_n ;
 int event_free () ;
 int events_mem ;
 scalar_t__ events_memory ;
 int expression_free (int *) ;
 int fprintf (int ,char*,scalar_t__) ;
 size_t history_l ;
 scalar_t__* history_q ;
 size_t history_r ;
 int log_crc32 ;
 int log_position ;
 int log_timestamp ;
 int map_int_int_free (int *) ;
 int map_ll_int_free (int *) ;
 int map_type_id ;
 int * q_st_int ;
 int * q_st_ll ;
 scalar_t__* std_t ;
 int stderr ;
 scalar_t__ test_mode ;
 int time_table_log_crc32 ;
 int time_table_log_position ;
 int time_table_log_timestamp ;
 int type_free (TYPE_1__*) ;
 TYPE_1__* types ;
 int vector_free (int ) ;
 scalar_t__ verbosity ;
 int write_only ;

void free_all (void) {
  if (verbosity > 0 || test_mode) {
    vector_free (log_position);
    vector_free (log_timestamp);
    vector_free (log_crc32);

    vector_free (time_table_log_position);
    vector_free (time_table_log_timestamp);
    vector_free (time_table_log_crc32);

    while (history_l != history_r) {
      dl_strfree (history_q[history_l]);
      history_q[history_l++] = 0;
      if (history_l > MAX_HISTORY) {
        history_l = 0;
      }
    }

    while (eq_n) {
      event_free();
    }
    assert (events_memory == 0);

    if (!write_only) {
      dl_free (events_mem, MAX_EVENT_MEM);
      dl_free (eq, sizeof (event *) * MAX_EV);
      dl_free (ans, sizeof (int) * MAX_EV);
    }

    int i;
    for (i = 0; i < FN; i += 1 + std_t[i]) {
      if (std_t[i]) {
        map_ll_int_free (&color_ll[i]);
        map_ll_int_free (&q_st_ll[i]);
      } else {
        map_int_int_free (&color_int[i]);
        map_int_int_free (&q_st_int[i]);
      }
    }

    for (i = 0; i < MAX_TYPE; i++) {
      if (types[i].name != ((void*)0)) {
        type_free (&types[i]);
      }
    }

    map_ll_int_free (&map_type_id);

    if (dump_mode && dump_query != ((void*)0)) {
      expression_free (&dump_expr);
    }

    fprintf (stderr, "Memory left: %lld\n", dl_get_memory_used());

    assert (dl_get_memory_used() == 0);
  }
}
