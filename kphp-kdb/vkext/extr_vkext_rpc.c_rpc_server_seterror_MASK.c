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
struct rpc_server {char const* error; int errnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 char const* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC5 (struct rpc_server *server, const char *error, int errnum) { /* {{{ */
  if (error) {
    if (server->error) {
      FUNC4 (server->error, FUNC3 (server->error) + 1);
    }
    
    server->error = FUNC2 (error);
    server->errnum = errnum;
    FUNC0 (FUNC3 (error) + 1);

    FUNC1 (error, errnum);
  }
}