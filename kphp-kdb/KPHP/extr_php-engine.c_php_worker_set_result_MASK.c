#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ body_len; scalar_t__ headers_len; int /*<<< orphan*/  exit_code; int /*<<< orphan*/  body; int /*<<< orphan*/  headers; int /*<<< orphan*/  return_code; } ;
typedef  TYPE_1__ script_result ;
struct TYPE_9__ {scalar_t__ mode; TYPE_3__* conn; } ;
typedef  TYPE_2__ php_worker ;
struct TYPE_10__ {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 scalar_t__ http_worker ; 
 scalar_t__ once_worker ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  rpc_stored ; 
 scalar_t__ rpc_worker ; 
 int /*<<< orphan*/  run_once_return_code ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6 (php_worker *worker, script_result *res) {
  if (worker->conn != NULL) {
    if (worker->mode == http_worker) {
      if (res == NULL) {
        FUNC1 (worker->conn, "OK", 2);
      } else {
        if (0) {
          FUNC4 (
              worker->conn,
              res->return_code,
              0,
              res->body_len,
              res->headers,
              "text/html; charset=windows-1251"
              );
        } else {
          FUNC5 (&worker->conn->Out, res->headers, res->headers_len);
        }
        FUNC5 (&worker->conn->Out, res->body, res->body_len);
      }
    } else if (worker->mode == rpc_worker) {
      if (!rpc_stored) {
        FUNC2 (worker, -505, "Nothing stored");
      }
    } else if (worker->mode == once_worker) {
      FUNC0 (FUNC3 (1, res->body, (size_t)res->body_len) == res->body_len);
      run_once_return_code = res->exit_code;
    }
  }
}