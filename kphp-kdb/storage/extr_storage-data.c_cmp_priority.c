
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ priority; } ;
typedef TYPE_1__ storage_binlog_file_t ;



__attribute__((used)) static storage_binlog_file_t *cmp_priority (void **IP, storage_binlog_file_t *A, storage_binlog_file_t *B) {
  if (A->priority < B->priority) {
    return A;
  }
  if (A->priority > B->priority) {
    return B;
  }
  return A;
}
