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
struct repl_server_status {int dummy; } ;
struct repl_error {int /*<<< orphan*/  session_id; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repl_server_status*) ; 
 struct repl_server_status* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct connection*,struct repl_error*,int) ; 

int FUNC3 (struct connection *c, struct repl_error *E, int len) {
  struct repl_server_status *S = FUNC1 (E->session_id, 0);
  if (S) {
    FUNC0 (S);
  }
  return FUNC2 (c, E, len);
}