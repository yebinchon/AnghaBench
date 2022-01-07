
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kfs_file_info {int flags; long long file_size; } ;
struct TYPE_3__ {long long orig_file_size; } ;
typedef TYPE_1__ kfs_binlog_zip_header_t ;


 TYPE_1__* load_binlog_zip_header (struct kfs_file_info*) ;

__attribute__((used)) static long long get_orig_file_size (struct kfs_file_info *FI) {
  if (FI->flags & 16) {
    kfs_binlog_zip_header_t *H = load_binlog_zip_header (FI);
    if (!H) {
      return -1;
    }
    return H->orig_file_size;
  }
  return FI->file_size;
}
