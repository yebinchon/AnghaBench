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
struct cword {int num; int c; int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int /*<<< orphan*/ * TL ; 
 scalar_t__ TS ; 
 int Tc ; 
 scalar_t__ Tw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 
 struct cword* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6 (void) {
  int i, j, len;
  struct cword *W;
  if (!Tc) { return; }
  if (verbosity > 0) {
    FUNC1 (stderr, "sorting words: %d words, %ld chars\n", Tc, (long)(Tw - TS));
  }
  FUNC0 (0, Tc-1);
  i = 0;
  while (i < Tc) {
    j = i+1;
    len = FUNC4 (TL[i]);
    while (j < Tc && !FUNC3 (TL[i], TL[j])) { j++; }
    W = FUNC5 (6 + len);
    W->num = j - i;
    W->c = len;
    FUNC2 (W->s, TL[i], len+1);
    i = j;
  }
  W = FUNC5 (4);
  W->num = -1;
  Tc = 0;
  Tw = TS;
}