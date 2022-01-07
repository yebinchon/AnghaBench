
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; scalar_t__ priority; scalar_t__ dir_id; } ;
typedef TYPE_1__ storage_binlog_file_t ;



__attribute__((used)) static int cmp_storage_binlog_file (const void *x, const void *y) {
  const storage_binlog_file_t *a = *(const storage_binlog_file_t **) x;
  const storage_binlog_file_t *b = *(const storage_binlog_file_t **) y;
  if (a->size > b->size) {
    return -1;
  }
  if (a->size < b->size) {
    return 1;
  }
  if (a->priority < b->priority) {
    return -1;
  }
  if (a->priority > b->priority) {
    return 1;
  }
  if (a->dir_id < b->dir_id) {
    return -1;
  }
  if (a->dir_id > b->dir_id) {
    return 1;
  }
  return 0;
}
