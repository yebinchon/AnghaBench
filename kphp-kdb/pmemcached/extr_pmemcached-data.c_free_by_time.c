
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* key; int key_len; struct TYPE_5__* next_time; } ;
typedef TYPE_1__ hash_entry_t ;


 int GET_TIME_ID (int ) ;
 int MAX_TIME_GAP ;
 size_t TIME_TABLE_SIZE ;
 int assert (TYPE_1__*) ;
 int do_pmemcached_delete (char*,int ) ;
 TYPE_1__* entry_buffer ;
 int fprintf (int ,char*,TYPE_1__*,char*,int) ;
 int get_double_time_since_epoch () ;
 size_t last_del_time ;
 int stderr ;
 int* time_st ;
 int verbosity ;
 int vkprintf (int,char*,int) ;

void free_by_time (int mx) {
  vkprintf (4, "free_by_time: mx = %d\n", mx);
  int en = GET_TIME_ID (get_double_time_since_epoch()),
      st = time_st[last_del_time];

  while (en - last_del_time > MAX_TIME_GAP || last_del_time - en > TIME_TABLE_SIZE - MAX_TIME_GAP ||
         (mx-- && last_del_time != en)) {
    hash_entry_t *entry_time = &entry_buffer[st];
    assert (entry_time->next_time);
    if (entry_time->next_time != entry_time) {
      if (verbosity >= 4) {
        fprintf(stderr, "del entry %p by time(key = %s) gap = %d\n", entry_time->next_time, entry_time->next_time->key, en - last_del_time);
      }
      do_pmemcached_delete (entry_time->next_time->key, entry_time->next_time->key_len);
    } else {
      if (++last_del_time == TIME_TABLE_SIZE) {
        last_del_time = 0;
      }
      st = time_st[last_del_time];
    }
  }
}
