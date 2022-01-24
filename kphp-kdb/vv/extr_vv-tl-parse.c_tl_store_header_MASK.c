#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tl_query_header {int op; int flags; scalar_t__ string_forward_keys_pos; scalar_t__ string_forward_keys_num; scalar_t__ int_forward_keys_pos; scalar_t__ int_forward_keys_num; int kitten_php_delay; int custom_timeout; scalar_t__ binlog_time; scalar_t__ binlog_pos; scalar_t__ actor_id; scalar_t__ wait_binlog_time; scalar_t__ int_forward; int /*<<< orphan*/  string_forward; scalar_t__* int_forward_keys; int /*<<< orphan*/ * string_forward_keys; scalar_t__ wait_binlog_pos; int /*<<< orphan*/  invoke_kphp_req_extra; } ;

/* Variables and functions */
 int RPC_DEST_ACTOR ; 
 int RPC_DEST_ACTOR_FLAGS ; 
 scalar_t__ RPC_INVOKE_KPHP_REQ ; 
 scalar_t__ RPC_INVOKE_REQ ; 
 int RPC_REQ_ERROR ; 
 int RPC_REQ_ERROR_WRAPPED ; 
 int RPC_REQ_RESULT ; 
 int RPC_REQ_RESULT_FLAGS ; 
 scalar_t__ TL_OUT_QID ; 
 int TL_QUERY_HEADER_FLAG_CUSTOM_TIMEOUT ; 
 int TL_QUERY_HEADER_FLAG_INT_FORWARD ; 
 int TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS ; 
 int TL_QUERY_HEADER_FLAG_KPHP_DELAY ; 
 int TL_QUERY_HEADER_FLAG_STRING_FORWARD ; 
 int TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS ; 
 int TL_QUERY_HEADER_FLAG_WAIT_BINLOG ; 
 int TL_QUERY_HEADER_FLAG_WAIT_BINLOG_TIME ; 
 int TL_QUERY_RESULT_HEADER_FLAG_BINLOG_POS ; 
 int TL_QUERY_RESULT_HEADER_FLAG_BINLOG_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7 (struct tl_query_header *header) {
  FUNC0 (FUNC2 (0) >= 0);  
  FUNC0 (header->op == (int)RPC_REQ_ERROR || header->op == (int)RPC_REQ_RESULT || header->op == (int)RPC_INVOKE_REQ || header->op == (int)RPC_REQ_ERROR_WRAPPED || header->op == (int)RPC_INVOKE_KPHP_REQ);
  if (header->op == (int)RPC_INVOKE_REQ || header->op == (int)RPC_INVOKE_KPHP_REQ) {
    if (header->op == (int)RPC_INVOKE_KPHP_REQ) {
      FUNC5 (header->invoke_kphp_req_extra, 24);
    }
    if (header->actor_id || header->flags) {
      if (header->flags) {
        if ((header->flags & TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS) && header->string_forward_keys_pos >= header->string_forward_keys_num) {
          header->flags &= ~TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS;
        }
        if ((header->flags & TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS) && header->int_forward_keys_pos >= header->int_forward_keys_num) {
          header->flags &= ~TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS;
        }
        FUNC3 (RPC_DEST_ACTOR_FLAGS);
        FUNC4 (header->actor_id);
        FUNC3 (header->flags);
        if (header->flags & TL_QUERY_HEADER_FLAG_WAIT_BINLOG) {
          FUNC4 (header->wait_binlog_pos);
        }
        if (header->flags & TL_QUERY_HEADER_FLAG_KPHP_DELAY) {
          FUNC3 (header->kitten_php_delay);
        }
        if (header->flags & TL_QUERY_HEADER_FLAG_STRING_FORWARD_KEYS) {
          FUNC3 (header->string_forward_keys_num - header->string_forward_keys_pos);
          int i;
          for (i = header->string_forward_keys_pos; i < header->string_forward_keys_num; i++) {
            FUNC6 (header->string_forward_keys[i], FUNC1 (header->string_forward_keys[i]));
          }
        }
        if (header->flags & TL_QUERY_HEADER_FLAG_INT_FORWARD_KEYS) {
          FUNC3 (header->int_forward_keys_num - header->int_forward_keys_pos);
          int i;
          for (i = header->int_forward_keys_pos; i < header->int_forward_keys_num; i++) {
            FUNC4 (header->int_forward_keys[i]);
          }
        }
        if (header->flags & TL_QUERY_HEADER_FLAG_STRING_FORWARD) {
          FUNC6 (header->string_forward, FUNC1 (header->string_forward));
        }
        if (header->flags & TL_QUERY_HEADER_FLAG_INT_FORWARD) {
          FUNC4 (header->int_forward);
        }
        if (header->flags & TL_QUERY_HEADER_FLAG_WAIT_BINLOG_TIME) {
          FUNC4 (header->wait_binlog_time);
        }
        if (header->flags & TL_QUERY_HEADER_FLAG_CUSTOM_TIMEOUT) {
          FUNC3 (header->custom_timeout);
        }
      } else {
        FUNC3 (RPC_DEST_ACTOR);
        FUNC4 (header->actor_id);
      }
    }
  } else if (header->op == RPC_REQ_ERROR_WRAPPED) {
    FUNC3 (RPC_REQ_ERROR);
    FUNC4 (TL_OUT_QID);    
  } else if (header->op == RPC_REQ_RESULT) {
    if (header->flags) {
      FUNC3 (RPC_REQ_RESULT_FLAGS);
      FUNC3 (header->flags);
      if (header->flags & TL_QUERY_RESULT_HEADER_FLAG_BINLOG_POS) {
        FUNC4 (header->binlog_pos);
      }
      if (header->flags & TL_QUERY_RESULT_HEADER_FLAG_BINLOG_TIME) {
        FUNC4 (header->binlog_time);
      }
    }
  }
  return 0;
}