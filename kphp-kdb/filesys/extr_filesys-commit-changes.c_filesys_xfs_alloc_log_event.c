
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lev_type_t ;


 int LEV_FILESYS_XFS_BEGIN_TRANSACTION ;
 int events ;
 void* memory_alloc_log_event (int ,int) ;
 int transaction_id ;

__attribute__((used)) static void *filesys_xfs_alloc_log_event (lev_type_t type, int size) {
  if (!events) {
    int *p = memory_alloc_log_event (LEV_FILESYS_XFS_BEGIN_TRANSACTION, 8);
    p[1] = transaction_id;
  }
  return memory_alloc_log_event (type, size);
}
