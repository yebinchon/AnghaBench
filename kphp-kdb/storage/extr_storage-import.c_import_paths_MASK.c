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

/* Variables and functions */
 int MAX_DIRS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char**,int,int) ; 

__attribute__((used)) static void FUNC3 (char *paths, int ugmode) {
  char *P[MAX_DIRS];
  int n = FUNC1 (paths, P);
  if (n >= 0) {
    FUNC2 (P, n, ugmode);
    FUNC0 (P[0]);
  }
}