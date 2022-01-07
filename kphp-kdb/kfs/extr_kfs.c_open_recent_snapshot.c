
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kfs_file {int dummy; } ;
typedef TYPE_1__* kfs_replica_handle_t ;
typedef struct kfs_file* kfs_file_handle_t ;
struct TYPE_4__ {int snapshot_num; } ;


 int fprintf (int ,char*) ;
 struct kfs_file* open_snapshot (TYPE_1__*,int) ;
 int stderr ;
 int verbosity ;

kfs_file_handle_t open_recent_snapshot (kfs_replica_handle_t R) {
  if (!R) {
    return 0;
  }
  if (verbosity > 1) {
    fprintf (stderr, "opening last snapshot file\n");
  }

  struct kfs_file *F = 0;
  int p = R->snapshot_num - 1;
  while (p >= 0 && (F = open_snapshot (R, p)) == 0) {
    --p;
  }
  return F;
}
