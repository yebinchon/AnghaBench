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
 scalar_t__ FUNC0 (struct rpc_server*,double) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_server*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_server*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (struct rpc_server *server, double timeout) {
  if (FUNC0 (server, timeout) > 0) {
    FUNC2 (server, "Flush timeout", 0);
    FUNC1 (server);
    return -1;
  }
  return 0;
}