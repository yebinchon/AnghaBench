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
struct rpc_server {int status; scalar_t__ retry_interval; scalar_t__ failed; scalar_t__ last_received_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_server*,char**,int*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ ping_timeout ; 
 scalar_t__ precise_now ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_server*) ; 
#define  rpc_status_connected 130 
#define  rpc_status_disconnected 129 
#define  rpc_status_failed 128 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4 (struct rpc_server *server, char **error_string, int *errnum) { /* {{{ */
  switch (server->status) {
    case rpc_status_disconnected:
      if (FUNC0 (server, error_string, errnum) > 0) {
        return 1;
      } else {
        break;
      }
    
    case rpc_status_connected:
      FUNC3 ();
      if (precise_now - server->last_received_time > ping_timeout) {
        if (FUNC2 (server) > 0) {
          return 1;
        } else if (FUNC0 (server, error_string, errnum) > 0) {
          return 1;
        } else {
          break;
        }
      } else {
        return 1;
      }


    case rpc_status_failed:
      FUNC3 ();
      if (server->retry_interval >= 0 && precise_now >= server->failed + server->retry_interval) {
        if (FUNC0 (server, error_string, errnum) > 0) {
          return 1;
        }
      } else {
        if (error_string) {
          *error_string = FUNC1 ("server failed some time ago. Fail timeout not exceeded.");
          *errnum = 0;
        }
        break;
      }
      break;
  }
  return -1;
}