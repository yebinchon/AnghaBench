#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int binlogs; int cur_log_pos; int /*<<< orphan*/  mutex_write; TYPE_2__** B; } ;
typedef  TYPE_1__ volume_t ;
struct stat {int st_size; int /*<<< orphan*/  st_mtime; } ;
struct TYPE_5__ {int dir_id; int fd_rdonly; int fd_wronly; int size; int prefix; int /*<<< orphan*/  abs_filename; int /*<<< orphan*/  mtime; } ;
typedef  TYPE_2__ storage_binlog_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int PREFIX_IO_BUFFSIZE ; 
 int STORAGE_ERR_DIR_NOT_FOUND ; 
 int STORAGE_ERR_FSTAT ; 
 int STORAGE_ERR_OPEN ; 
 int STORAGE_ERR_READ ; 
 int STORAGE_ERR_SIZE_MISMATCH ; 
 int STORAGE_ERR_TAIL_DIFFER ; 
 scalar_t__ binlog_disabled ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char*,int const) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const FUNC5 (int,unsigned char*,int const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8 (volume_t *V, int dir_id) {
  int k;
  for (k = 0; k < V->binlogs; k++) {
    storage_binlog_file_t *B = V->B[k];
    if (B->dir_id == dir_id) {
      if (B->fd_rdonly >= 0 || B->fd_wronly >= 0) {
        return -1;
      }
      int fd = FUNC4 (B->abs_filename, O_RDONLY);
      if (fd < 0) {
        return STORAGE_ERR_OPEN;
      }
      struct stat buf;
      if (FUNC1 (fd, &buf) < 0) {
        FUNC0 (fd);
        return STORAGE_ERR_FSTAT;
      }
      if (binlog_disabled) {
        B->size = buf.st_size;
        B->mtime = buf.st_mtime;
        B->fd_rdonly = fd;
        return 0;
      }

      FUNC6 (&V->mutex_write);
      if (buf.st_size != V->cur_log_pos) {
        FUNC0 (fd);
        FUNC7 (&V->mutex_write);
        return STORAGE_ERR_SIZE_MISMATCH;
      }
      int i, o = 0, res = 0;
      for (i = 0; i < V->binlogs; i++) {
        if (V->B[i]->prefix && V->B[i]->size == V->cur_log_pos && V->B[i]->fd_rdonly >= 0) {
          o = 1;
          break;
        }
      }
      if (o) {
        unsigned char a[PREFIX_IO_BUFFSIZE], b[PREFIX_IO_BUFFSIZE];
        const int l = (PREFIX_IO_BUFFSIZE < buf.st_size) ? PREFIX_IO_BUFFSIZE : buf.st_size;
        if (l != FUNC5 (fd, a, l, V->cur_log_pos - l)) {
          res = STORAGE_ERR_READ;
        } else {
          for (i = 0; i < V->binlogs; i++) {
            if (V->B[i]->prefix && V->B[i]->size == V->cur_log_pos && V->B[i]->fd_rdonly >= 0) {
              if (l != FUNC5 (V->B[i]->fd_rdonly, b, l, V->cur_log_pos - l)) {
                res = STORAGE_ERR_READ;
                break;
              }
              if (FUNC3 (a, b, l)) {
                res = STORAGE_ERR_TAIL_DIFFER;
              }
              break;
            }
          }
        }
      }
      if (!res) {
        B->prefix = 1;
        B->size = buf.st_size;
        B->fd_rdonly = fd;
        B->fd_wronly = FUNC4 (B->abs_filename, O_WRONLY);
        if (FUNC2 (B->fd_wronly, F_WRLCK) <= 0) {
          FUNC0 (B->fd_wronly);
          B->fd_wronly = -1;
        }
      }
      FUNC7 (&V->mutex_write);
      return res;
    }
  }
  return STORAGE_ERR_DIR_NOT_FOUND;
}