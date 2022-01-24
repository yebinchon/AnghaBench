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
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC3 (regex_t *preg, const char *regex, int cflags) {
  char err[16384];
  int r = FUNC1 (preg, regex, cflags);
  if (r) {
    int l = FUNC2 (r, preg, err, sizeof (err) - 1);
    FUNC0 ("%.*s\n", l, err);
  }
  return r;
}