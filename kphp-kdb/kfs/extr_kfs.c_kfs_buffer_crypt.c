
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* kfs_file_handle_t ;
struct TYPE_5__ {TYPE_1__* info; } ;
struct TYPE_4__ {scalar_t__ iv; int replica; } ;


 int assert (int) ;
 int buffer_crypt (int ,unsigned char*,long long,scalar_t__,long long) ;

void kfs_buffer_crypt (kfs_file_handle_t F, void *buff, long long size, long long off) {
  assert (off >= 0);
  if (F && F->info && F->info->iv) {
    buffer_crypt (F->info->replica, (unsigned char *) buff, size, F->info->iv, off);
  }
}
