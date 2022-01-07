
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {char* x; int * y; } ;
typedef TYPE_2__ shmap_pair_string_vptr ;
struct TYPE_13__ {scalar_t__ lock; char* name; TYPE_5__* q; TYPE_1__* prev_st; int timeout; } ;
typedef TYPE_3__ qkey ;
struct TYPE_14__ {int keys_cnt; } ;
struct TYPE_11__ {int ref_cnt; } ;


 int LOG_DEF ;
 int add_entry_time (TYPE_3__*,int) ;
 int assert (int) ;
 int dbg (char*,char*) ;
 int del_entry_time (TYPE_3__*) ;
 scalar_t__ dl_get_memory_used () ;
 int dl_log_add (int ,int ,char*,scalar_t__,char*,TYPE_5__*,int ) ;
 int dl_strfree (char*) ;
 int fprintf (int ,char*,char*) ;
 int h_qkey ;
 int qkey_free (TYPE_3__*) ;
 int queue_fix (TYPE_5__*) ;
 int shmap_string_vptr_del (int *,TYPE_2__) ;
 int stderr ;
 int str_memory ;
 int verbosity ;

void delete_qkey (qkey *k) {
  assert (k != ((void*)0));

  del_entry_time (k);
  if (k->lock) {
    dl_log_add (LOG_DEF, 0, "trying to del locked key (%d)(key name = %s)(queue pointer = %p)(timeout = %d)!\n", k->lock, k->name, k->q, k->timeout);
    add_entry_time (k, 100);
    return;
  }


  assert (k->lock == 0);

  if (k->prev_st != ((void*)0)) {
    k->prev_st->ref_cnt--;
  }
  k->q->keys_cnt--;
  queue_fix (k->q);

  shmap_pair_string_vptr a;
  a.y = ((void*)0);
  a.x = k->name;

  if (verbosity > 2) {
    fprintf (stderr, "Key deleted : [%s]\n", k->name);
  }
  dbg ("Key deleted : [%s]\n", k->name);
  shmap_string_vptr_del (&h_qkey, a);


  str_memory -= dl_get_memory_used();
  dl_strfree (k->name);
  str_memory += dl_get_memory_used();

  qkey_free (k);
}
