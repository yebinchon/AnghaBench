
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kfs_file_info {int flags; long long file_size; int kfs_headers; scalar_t__ start; } ;
struct TYPE_3__ {long long orig_file_size; } ;
typedef TYPE_1__ kfs_binlog_zip_header_t ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static inline long long kfs_get_binlog_file_size (struct kfs_file_info *FI) {
  if (!(FI->flags & 16)) {
    return FI->file_size - 4096 * FI->kfs_headers;
  }
  kfs_binlog_zip_header_t *H = (kfs_binlog_zip_header_t *) FI->start;
  assert (H);
  return H->orig_file_size;
}
