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
struct rpc_server {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (struct rpc_server*,int,double)) ; 
 int FUNC1 (struct rpc_server*,int,double) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_server*) ; 

__attribute__((used)) static int FUNC3 (struct rpc_server *server, int force_block_read, double timeout) { /* {{{ */
  FUNC0(rpc_work);
  int x = FUNC1 (server, force_block_read, timeout);
  if (x < 0) {
    FUNC2 (server);
    return -1;
  } else if (x == 0) {
    return 0;
  } else {
    return 1;
  }
}