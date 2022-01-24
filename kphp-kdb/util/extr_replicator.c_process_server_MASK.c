#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct repl_server_status {int flags; long long client_log_pos; long long client_log_wrpos; long buffer_file_pos; long long logrotate_pos; long wptr; long rptr; TYPE_5__* conn; TYPE_4__* binlog; scalar_t__ buffer_size; TYPE_2__* rb; int /*<<< orphan*/  buffer; } ;
struct TYPE_6__ {scalar_t__ total_bytes; scalar_t__ unprocessed_bytes; } ;
struct TYPE_10__ {TYPE_1__ Out; } ;
struct TYPE_9__ {TYPE_3__* info; } ;
struct TYPE_8__ {long long file_size; scalar_t__ log_pos; } ;
struct TYPE_7__ {scalar_t__ slice_binlog_pos; } ;

/* Variables and functions */
 int DIRTY_THRESHOLD_HIGH ; 
 long long DIRTY_THRESHOLD_LOW ; 
 scalar_t__ MAX_NET_OUT_QUEUE_BYTES ; 
 int MAX_UPDATE_SIZE ; 
 int RS_LOGROTATE ; 
 int RS_REPL_STARTED ; 
 int RS_ZIPPED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct repl_server_status*) ; 
 long FUNC2 (struct repl_server_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct repl_server_status*) ; 
 int FUNC4 (TYPE_5__*,struct repl_server_status*,int) ; 

int FUNC5 (struct repl_server_status *S) {
  if (!(S->flags & RS_REPL_STARTED) || !S->buffer) {
    return 0;
  }
  long cur_buffer_bytes = FUNC2 (S);
  if (!cur_buffer_bytes) {
    return 0;
  }
  if (S->conn->Out.total_bytes + S->conn->Out.unprocessed_bytes > MAX_NET_OUT_QUEUE_BYTES) {
    return 0;
  }
  long long unconfirmed_bytes = S->client_log_pos - S->client_log_wrpos;
  FUNC0 (unconfirmed_bytes >= 0);
  if (unconfirmed_bytes >= DIRTY_THRESHOLD_LOW) {
    return 0;
  }
  long long buffer_end_pos = S->buffer_file_pos + cur_buffer_bytes;
  int can_send = DIRTY_THRESHOLD_HIGH - (int) unconfirmed_bytes;

  if (!(S->flags & RS_ZIPPED)) {
    if (buffer_end_pos < S->binlog->info->file_size && buffer_end_pos > S->binlog->info->file_size - 36) {
      cur_buffer_bytes = S->binlog->info->file_size - 36 - S->buffer_file_pos;
    } else if (buffer_end_pos >= S->binlog->info->file_size && can_send >= cur_buffer_bytes - 36) {
      FUNC0 (buffer_end_pos == S->binlog->info->file_size);
      if (S->binlog->info->log_pos != S->rb->slice_binlog_pos) {
        FUNC0 (S->binlog->info->log_pos < S->rb->slice_binlog_pos);
        if (cur_buffer_bytes > 0) {
          cur_buffer_bytes -= 36;
        }
        FUNC0 (cur_buffer_bytes >= 0);
        S->logrotate_pos = S->client_log_pos + cur_buffer_bytes;
        S->flags |= RS_LOGROTATE;
      } else {
        if (FUNC1 (S)) {
          FUNC3 (S);
          long old_cur_buffer_bytes = cur_buffer_bytes;
          cur_buffer_bytes = S->wptr - S->rptr;
          if (cur_buffer_bytes < 0) {
            cur_buffer_bytes += S->buffer_size;
            FUNC0 (cur_buffer_bytes > 0);
          }
          FUNC0 (cur_buffer_bytes >= old_cur_buffer_bytes);
          if (FUNC1 (S) == 36) {
            FUNC0 (cur_buffer_bytes >= 36);
            cur_buffer_bytes -= 36;
            FUNC0 (cur_buffer_bytes >= 0);
            S->logrotate_pos = S->client_log_pos + cur_buffer_bytes;
            S->flags |= RS_LOGROTATE;
          }
        }
      }
    }
  } else {
    if (buffer_end_pos == S->binlog->info->file_size) {
      S->flags |= RS_LOGROTATE;
      S->logrotate_pos = S->client_log_pos + cur_buffer_bytes;
    }
  }

  if (cur_buffer_bytes <= 0) {
    return 0;
  }

  if (can_send > cur_buffer_bytes) {
    can_send = cur_buffer_bytes;
  }
  if (can_send > MAX_UPDATE_SIZE) {
    can_send = MAX_UPDATE_SIZE;
  }
  // now send can_send bytes to client
  return FUNC4 (S->conn, S, can_send);
}