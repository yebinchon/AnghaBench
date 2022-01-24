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
struct rpc_server {int in_bytes; scalar_t__ in_pos; scalar_t__ in_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  read_in ; 

__attribute__((used)) static int FUNC4 (struct rpc_server *server, char *data, int len, double timeout) {
  FUNC0 (read_in);
  FUNC2 (read_in);
  if (len <= server->in_bytes) {
    FUNC3 (data, server->in_buf + server->in_pos, len);
    server->in_pos += len;
    server->in_bytes -= len;
    FUNC1 (read_in);
    return len;
  } else {    
    FUNC3 (data, server->in_buf + server->in_pos, server->in_bytes);
    int t = server->in_bytes;
    server->in_pos = 0;
    server->in_bytes = 0;
    FUNC1 (read_in);
    return t;
  }
}