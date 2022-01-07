
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data_len; int data; } ;
typedef TYPE_1__ record_t ;


 int add_logevents ;
 void* alloc_log_event (int ,int,int ) ;
 int assert (int) ;
 int compute_uncommitted_log_bytes () ;
 int flush_binlog_forced (int ) ;
 int memcpy (void*,int ,int) ;
 int try_change_zone () ;

__attribute__((used)) static void record_add (record_t *r) {
  try_change_zone ();
  assert (r->data_len >= 4);
  void *E = alloc_log_event (0, r->data_len, 0);
  memcpy (E, r->data, r->data_len);
  if (compute_uncommitted_log_bytes () > (1 << 23)) {
    flush_binlog_forced (0);
  }
  add_logevents++;
}
