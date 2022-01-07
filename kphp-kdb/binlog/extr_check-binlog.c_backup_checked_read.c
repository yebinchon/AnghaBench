
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int backup_status_t ;
struct TYPE_9__ {TYPE_6__* F; } ;
struct TYPE_8__ {TYPE_3__ S; } ;
typedef TYPE_2__ backup_file_t ;
struct TYPE_10__ {TYPE_1__* info; } ;
struct TYPE_7__ {int filename; } ;


 scalar_t__ PREVSIZE ;
 int assert (TYPE_6__*) ;
 int backup_buff ;
 int bs_differ ;
 int bs_io_error ;
 int bs_ok ;
 scalar_t__ io_buff ;
 scalar_t__ memcmp (scalar_t__,int ,long long) ;
 scalar_t__ stream_read_limited (TYPE_3__*,int ,long long) ;
 scalar_t__ stream_seek (TYPE_3__*,long long) ;
 int vkprintf (int,char*,long long,int ,long long) ;

__attribute__((used)) static int backup_checked_read (backup_file_t *f, long long off, long long s, backup_status_t *status) {
  assert (f->S.F);
  if (stream_seek (&f->S, off) < 0) {
    *status = bs_io_error;
    return -1;
  }
  if (stream_read_limited (&f->S, backup_buff, s) < 0) {
    *status = bs_io_error;
    return -1;
  }

  vkprintf (2, "read %lld bytes from backup '%s', offset: %lld\n", (long long) s, f->S.F->info->filename, off);

  if (memcmp (io_buff + PREVSIZE, backup_buff, s)) {
    *status = bs_differ;
    return -1;
  }
  *status = bs_ok;
  return 0;
}
