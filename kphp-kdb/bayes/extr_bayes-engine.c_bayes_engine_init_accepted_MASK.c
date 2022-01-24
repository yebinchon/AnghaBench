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
typedef  int /*<<< orphan*/  message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC4 (struct connection *c) {
  if (verbosity > 1) {
    FUNC1 (stderr, "bayes_engine_init_accepted\n");
  }
  FUNC3 (FUNC0 (c), 0, sizeof (message));
  return FUNC2 (c);
}