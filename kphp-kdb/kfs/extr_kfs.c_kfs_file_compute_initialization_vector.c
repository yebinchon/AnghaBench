
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kfs_file_info {int * iv; int filename; TYPE_1__* replica; } ;
typedef TYPE_1__* kfs_replica_handle_t ;
struct TYPE_4__ {int * ctx_crypto; } ;


 int assert (TYPE_1__*) ;
 char* basename (int ) ;
 scalar_t__ compute_iv (TYPE_1__*,char const*,int ,int **) ;
 int strlen (char const*) ;

int kfs_file_compute_initialization_vector (struct kfs_file_info *FI) {
  kfs_replica_handle_t R = FI->replica;
  assert (R);
  if (R->ctx_crypto == ((void*)0) || FI->iv != ((void*)0)) {
    return 0;
  }
  const char *name = basename (FI->filename);
  if (compute_iv (R, name, strlen (name), &FI->iv) < 0) {
    return -1;
  }
  return 0;
}
