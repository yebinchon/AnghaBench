#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sugg; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int MAX_INIT ; 
 int MAX_SUGGESTIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int* fd ; 
 long long* fsize ; 
 scalar_t__ FUNC3 (int,char*,int) ; 
 int FUNC4 (int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

void FUNC6 (char *suggname) {
  FUNC0 (FUNC3 (3, suggname, -1) >= 0);
#define MAX_INIT 30000
  static int buff[MAX_INIT];

  int id, n;
  user *u;

  long long sz;
  FUNC0 (FUNC4 (fd[3], &sz, sizeof (long long)) == sizeof (long long));
  FUNC0 (sz == fsize[3]);

  while (FUNC4 (fd[3], &id, sizeof (int)) == sizeof (int)) {
    FUNC0 (FUNC4 (fd[3], &n, sizeof (int)) == sizeof (int));
    FUNC0 (0 <= n && n * 2 < MAX_INIT);
    int len = sizeof (int) * 2 * n;
    FUNC0 (FUNC4 (fd[3], buff, len) == len);

    u = FUNC2 (id);
    if (u == NULL) {
      continue;
    }

    if (n > MAX_SUGGESTIONS) {
      n = MAX_SUGGESTIONS;
    }

    int i;
    for (i = 0; i < n; i++) {
      FUNC5 (&u->sugg, buff[2 * i + 1], buff[2 * i]);
    }
  }

  FUNC0 (FUNC1 (fd[3]) >= 0);
  fd[3] = -1;
#undef MAX_INIT
}