#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* ne; int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const) ; 
 TYPE_1__* mem ; 
 int /*<<< orphan*/  mn ; 
 int FUNC2 (char const*) ; 

void FUNC3 (int st, const char *s, int t) {
  int v = st;
  int n = FUNC2 (s);

  while (n--) {
    int c = FUNC1 (s[n]);
    if (!mem[v].ne[c]) {
      mem[v].ne[c] = mn++;
    }
    v = mem[v].ne[c];
  }

  FUNC0 (mem[v].type == 0);
  mem[v].type = t;
}