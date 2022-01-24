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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct connection*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC4 (struct connection *c, int who) {
  if (verbosity > 1) {
    FUNC1 (stderr, "bayes_engine_close_connection\n");
  }
  FUNC2 (FUNC0 (c));

  return FUNC3 (c, who);
}