#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ log_rptr; scalar_t__ log_wptr; scalar_t__ log_endw; scalar_t__ log_wcrypt_ptr; scalar_t__ log_start; } ;
struct TYPE_6__ {TYPE_1__* info; } ;
struct TYPE_5__ {int file_size; } ;

/* Variables and functions */
 TYPE_2__* Binlog ; 
 int EAGAIN ; 
 int EINTR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_3__ W ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlog_cyclic_mode ; 
 scalar_t__ binlog_disabled ; 
 int /*<<< orphan*/  binlog_fd ; 
 int /*<<< orphan*/  binlogname ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,long long,long long,int /*<<< orphan*/ ) ; 
 long long log_headers_size ; 
 long long log_pos ; 
 long long log_start_pos ; 
 long long FUNC4 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 int now ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ verbosity ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void FUNC8 (int force_sync) {
  int w, s, t;
  long long log_file_pos;
  if (!binlogname || binlog_disabled) {
    return;
  }
  if (W.log_rptr == W.log_wptr) {
    FUNC6 (force_sync * 2);
    return;
  }
  if (verbosity > 0) {
    FUNC1 (stderr, "%d flush_binlog()\n", now);
  }
  if (W.log_endw) {
    FUNC0 (W.log_wptr < W.log_rptr && W.log_rptr <= W.log_endw); 
    s = W.log_endw - W.log_rptr;
    if (s > 0) {
      log_file_pos = log_pos - log_start_pos + log_headers_size;
      FUNC0 (FUNC4 (binlog_fd, log_file_pos, SEEK_SET) == log_file_pos);
      if (W.log_rptr <= W.log_wcrypt_ptr && W.log_wcrypt_ptr < W.log_endw) {
        t = W.log_endw - W.log_wcrypt_ptr;
        FUNC5 (); /* relax crc32 before encryption */
        FUNC2 (Binlog, W.log_wcrypt_ptr, t, log_file_pos + (W.log_wcrypt_ptr - W.log_rptr));
        W.log_wcrypt_ptr = W.log_start;
      }
      w = FUNC7 (binlog_fd, W.log_rptr, s);
      if (w < 0) {
        FUNC1 (stderr, "error writing %d bytes at %lld (file position %lld) to %d: %m\n", s, log_pos, log_file_pos, binlogname);
        return;
      }
      W.log_rptr += w;
      if (Binlog && !binlog_cyclic_mode) {
        //Binlog->info->log_pos += w;
        Binlog->info->file_size += w;
      }
      log_pos += w;
      if (w < s) {
        return;
      }
    }
    W.log_rptr = W.log_start;
    W.log_endw = 0;
  }
  FUNC0 (W.log_rptr <= W.log_wptr);
  s = W.log_wptr - W.log_rptr;
  if (s > 0) {
    log_file_pos = log_pos - log_start_pos + log_headers_size;
    FUNC0 (FUNC4 (binlog_fd, log_file_pos, SEEK_SET) == log_file_pos);
    if (W.log_rptr <= W.log_wcrypt_ptr && W.log_wcrypt_ptr < W.log_wptr) {
      t = W.log_wptr - W.log_wcrypt_ptr;
      FUNC5 (); /* relax crc32 before encryption */
      FUNC2 (Binlog, W.log_wcrypt_ptr, t, log_file_pos + (W.log_wcrypt_ptr - W.log_rptr));
      W.log_wcrypt_ptr = W.log_wptr;
    }
    w = FUNC7 (binlog_fd, W.log_rptr, s);
    if (w < 0) {
      int binlog_write_errno = errno;
      FUNC3 ("error writing %d bytes at %lld (file position %lld) to %s: %m\n", s, log_pos, log_file_pos, binlogname);
      FUNC0 (binlog_write_errno == EINTR || binlog_write_errno == EAGAIN);
      return;
    }
    W.log_rptr += w;
    if (Binlog && !binlog_cyclic_mode) {
      //Binlog->info->log_pos += w;
      Binlog->info->file_size += w;
    }
    log_pos += w;
  }
  FUNC6 (1 + force_sync);
}