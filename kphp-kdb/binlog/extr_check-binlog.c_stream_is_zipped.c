
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* F; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_6__ {scalar_t__ kfs_file_type; int flags; } ;
struct TYPE_5__ {TYPE_2__* info; } ;


 int assert (int) ;
 scalar_t__ kfs_binlog ;
 scalar_t__ kfs_snapshot ;

__attribute__((used)) static int stream_is_zipped (stream_t *S) {
  assert (S->F && S->F->info && (S->F->info->kfs_file_type == kfs_binlog || S->F->info->kfs_file_type == kfs_snapshot));
  return (S->F->info->flags & 16) ? 1 : 0;
}
