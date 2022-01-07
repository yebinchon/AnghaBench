
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* kfs_file_handle_t ;
struct TYPE_5__ {TYPE_1__* info; int fd; } ;
struct TYPE_4__ {int filename; } ;


 int exit (int) ;
 int kprintf (char*,int,...) ;
 int load_binlogpos (int) ;
 int tar_unpack (int ,int ) ;
 int work_dir ;

__attribute__((used)) static int load_index (kfs_file_handle_t Index) {
  if (Index == ((void*)0)) {
    return 0;
  }
  int r = tar_unpack (Index->fd, work_dir);
  if (r < 0) {
    kprintf ("tar_unpack (%s, %s) returns error code %d.\n", Index->info->filename, work_dir, r);
    exit (1);
  }
  r = load_binlogpos (1);
  if (r < 0) {
    kprintf ("load_binlogpos () returns error code %d.\n", r);
    exit (1);
  }
  return 0;
}
