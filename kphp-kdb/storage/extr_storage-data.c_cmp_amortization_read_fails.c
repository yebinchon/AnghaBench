
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ counter; } ;
struct TYPE_7__ {TYPE_1__ as_read; } ;
typedef TYPE_2__ storage_binlog_file_t ;


 int NEXT ;
 double fabs (scalar_t__) ;

__attribute__((used)) static storage_binlog_file_t *cmp_amortization_read_fails (void **IP, storage_binlog_file_t *A, storage_binlog_file_t *B) {
  if (fabs (A->as_read.counter - B->as_read.counter) < 1.0) {
    NEXT;
  }
  return A->as_read.counter < B->as_read.counter ? A : B;
}
