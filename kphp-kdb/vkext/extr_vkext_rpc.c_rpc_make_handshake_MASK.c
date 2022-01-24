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
struct rpc_server {scalar_t__ status; scalar_t__ sfd; int inbound_packet_num; int packet_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rpc_server*,double) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_server*) ; 
 scalar_t__ rpc_status_connected ; 
 scalar_t__ FUNC3 (struct rpc_server*,int,double) ; 

int FUNC4 (struct rpc_server *server, double timeout) { /* {{{ */
  if (server->status != rpc_status_connected || server->sfd < 0) {
    return -1;
  }
  if (server->inbound_packet_num != -2 || server->packet_num != -2) {
    FUNC2 (server);
    return -1;
  }
  if (FUNC1 (server, timeout) < 0) {
    FUNC2 (server);
    return -1;
  }
  if (FUNC3 (server, 1, timeout) < 0) {
    FUNC2 (server);
    return -1;
  }
  if (FUNC3 (server, 1, timeout) < 0) {
    FUNC2 (server);
    return -1;
  }
  FUNC0 (server->packet_num == 0);
  FUNC0 (server->inbound_packet_num == 0);
  return 0;
}