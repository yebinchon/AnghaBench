
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int aio_fildes; } ;
struct TYPE_6__ {int abs_filename; } ;


 int EINPROGRESS ;
 int aio_error (TYPE_3__*) ;
 TYPE_3__ aio_fsync_cbp ;
 int aio_return (TYPE_3__*) ;
 TYPE_1__* last_fsync_binlog_file ;
 int strerror (int) ;
 int update_binlog_fsync_stat (TYPE_1__*,int) ;
 int vkprintf (int ,char*,int ,int ) ;

int get_aio_inprogress (void) {
  if (aio_fsync_cbp.aio_fildes < 0) {
    return 0;
  }
  int err = aio_error (&aio_fsync_cbp);
  if (err == EINPROGRESS) {
    return 1;
  }
  int res = aio_return (&aio_fsync_cbp);
  if (res < 0) {
    vkprintf (0, "aio_fsync (%s) fails. %s\n", last_fsync_binlog_file->abs_filename, strerror (res));
    update_binlog_fsync_stat (last_fsync_binlog_file, 0);
  } else {
    update_binlog_fsync_stat (last_fsync_binlog_file, 1);
  }
  aio_fsync_cbp.aio_fildes = -1;
  return 0;
}
