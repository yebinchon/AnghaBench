
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int exp_time; scalar_t__ flags; int timestamp; int accum_value; int data_len; int data; int key_len; int key; } ;
typedef TYPE_1__ hash_entry_t ;


 int debug_dump_key (int ,int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void debug_dump_hash_entry (hash_entry_t *E) {
  fprintf (stderr, "E->key = "); debug_dump_key (E->key, E->key_len);
  fprintf (stderr, "E->data = "); debug_dump_key (E->data, E->data_len);
  fprintf (stderr, "flags = %d, exp_time = %d, accum_value = %lld, timestamp = %d\n", (int) E->flags, E->exp_time, E->accum_value, E->timestamp);

}
