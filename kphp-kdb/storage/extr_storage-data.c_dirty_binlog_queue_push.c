
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dirty; struct TYPE_5__* fsync_next; } ;
typedef TYPE_1__ storage_binlog_file_t ;


 TYPE_1__* dirty_binlog_queue_head ;
 TYPE_1__* dirty_binlog_queue_tail ;
 int mutex_dirty_binlog_queue ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void dirty_binlog_queue_push (storage_binlog_file_t *B) {
  if (B->dirty) {
    return;
  }
  B->dirty = 1;
  pthread_mutex_lock (&mutex_dirty_binlog_queue);
  B->fsync_next = ((void*)0);
  if (dirty_binlog_queue_head == ((void*)0)) {
    dirty_binlog_queue_head = dirty_binlog_queue_tail = B;
  } else {
    dirty_binlog_queue_tail = dirty_binlog_queue_tail->fsync_next = B;
  }
  pthread_mutex_unlock (&mutex_dirty_binlog_queue);
}
