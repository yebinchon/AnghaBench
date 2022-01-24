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
struct stat_failure {int /*<<< orphan*/  size; int /*<<< orphan*/ * prog; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct connection*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2 (struct connection *c, const char *key, struct stat_failure *S) {
  FUNC1 (4, "stat_failure_write (S->prog: %s, S->size: %d)\n", S->prog, S->size);
  if (S->prog == NULL) {
    return 0;
  }
  return FUNC0 (c, key, S->prog, S->size);
}