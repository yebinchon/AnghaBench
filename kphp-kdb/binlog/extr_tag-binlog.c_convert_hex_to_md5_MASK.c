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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int const) ; 
 int FUNC2 (char) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4 (unsigned char *output, char *hex) {
  int i;
  const int l = FUNC3 (hex);
  if (l != 32) {
    FUNC1 ("Tag should contain 32 hexdigits. Given tag length is %d.\n", l);
    FUNC0 (1);
  }
  for (i = 0; i < 16; i++) {
    output[i] = (FUNC2 (hex[2*i]) << 4) + FUNC2 (hex[2*i+1]);
  }
}