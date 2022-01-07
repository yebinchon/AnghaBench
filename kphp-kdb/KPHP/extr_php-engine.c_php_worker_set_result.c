
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ body_len; scalar_t__ headers_len; int exit_code; int body; int headers; int return_code; } ;
typedef TYPE_1__ script_result ;
struct TYPE_9__ {scalar_t__ mode; TYPE_3__* conn; } ;
typedef TYPE_2__ php_worker ;
struct TYPE_10__ {int Out; } ;


 int assert (int) ;
 int http_return (TYPE_3__*,char*,int) ;
 scalar_t__ http_worker ;
 scalar_t__ once_worker ;
 int rpc_error (TYPE_2__*,int,char*) ;
 int rpc_stored ;
 scalar_t__ rpc_worker ;
 int run_once_return_code ;
 scalar_t__ write (int,int ,size_t) ;
 int write_basic_http_header (TYPE_3__*,int ,int ,scalar_t__,int ,char*) ;
 int write_out (int *,int ,scalar_t__) ;

void php_worker_set_result (php_worker *worker, script_result *res) {
  if (worker->conn != ((void*)0)) {
    if (worker->mode == http_worker) {
      if (res == ((void*)0)) {
        http_return (worker->conn, "OK", 2);
      } else {
        if (0) {
          write_basic_http_header (
              worker->conn,
              res->return_code,
              0,
              res->body_len,
              res->headers,
              "text/html; charset=windows-1251"
              );
        } else {
          write_out (&worker->conn->Out, res->headers, res->headers_len);
        }
        write_out (&worker->conn->Out, res->body, res->body_len);
      }
    } else if (worker->mode == rpc_worker) {
      if (!rpc_stored) {
        rpc_error (worker, -505, "Nothing stored");
      }
    } else if (worker->mode == once_worker) {
      assert (write (1, res->body, (size_t)res->body_len) == res->body_len);
      run_once_return_code = res->exit_code;
    }
  }
}
