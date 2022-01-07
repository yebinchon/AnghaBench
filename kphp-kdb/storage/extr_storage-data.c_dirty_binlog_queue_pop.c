
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* fsync_next; scalar_t__ dirty; } ;
typedef TYPE_1__ storage_binlog_file_t ;


 TYPE_1__* dirty_binlog_queue_head ;
 int mutex_dirty_binlog_queue ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

storage_binlog_file_t *dirty_binlog_queue_pop (void) {
  storage_binlog_file_t *B = ((void*)0);
  pthread_mutex_lock (&mutex_dirty_binlog_queue);
  if (dirty_binlog_queue_head) {
    B = dirty_binlog_queue_head;
    dirty_binlog_queue_head = dirty_binlog_queue_head->fsync_next;
    B->dirty = 0;
    B->fsync_next = ((void*)0);
  }
  pthread_mutex_unlock (&mutex_dirty_binlog_queue);
  return B;
}
