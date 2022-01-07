
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int memory_buf_mx; } ;


 int MAX_LETTER_SIZE ;
 int MAX_PRIORITY ;
 int assert (int) ;
 int dl_close_file (int) ;
 int dl_free (int ,int) ;
 scalar_t__ dl_get_memory_used () ;
 int * drive_l_to_letter ;
 int flush_all (int) ;
 int fprintf (int ,char*,scalar_t__) ;
 TYPE_2__ header ;
 int id_to_letter ;
 int letter_buf ;
 int letter_buf_get ;
 int letter_delete_time (int,char*) ;
 int map_ll_int_free (int *) ;
 int map_ll_vptr_free (int *) ;
 int * memory_buf ;
 int stderr ;
 int task_deletes ;
 int task_id_to_delete_time ;
 int vector_free (int ) ;
 scalar_t__ verbosity ;

void free_all (void) {

  letter_delete_time (-1, "Engine restart");

  flush_all (1);

  int i;
  dl_close_file (1);
  for (i = 0; i < MAX_PRIORITY; i++) {
    dl_close_file (2 + i);
  }

  if (verbosity > 0) {
    map_ll_vptr_free (&id_to_letter);
    for (i = 0; i < MAX_PRIORITY; i++) {
      map_ll_vptr_free (&drive_l_to_letter[i]);
    }

    vector_free (task_deletes);
    map_ll_int_free (&task_id_to_delete_time);

    for (i = 0; i < MAX_PRIORITY; i++) {
      dl_free (memory_buf[i], header.data[i].memory_buf_mx);
    }

    dl_free (letter_buf, 2 * MAX_LETTER_SIZE + 1100);
    dl_free (letter_buf_get, 2 * MAX_LETTER_SIZE + 1100);
    fprintf (stderr, "Memory left: %lld\n", dl_get_memory_used());

    assert (dl_get_memory_used() == 0);
  }
}
