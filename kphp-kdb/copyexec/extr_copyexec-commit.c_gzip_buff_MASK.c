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
typedef  int uLongf ;

/* Variables and functions */
 int INT_MAX ; 
 int Z_OK ; 
 int FUNC0 (unsigned char*,int*,unsigned char*,int,scalar_t__) ; 
 int FUNC1 (int) ; 
 scalar_t__ compress_level ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned char* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 (unsigned char *a, int n, unsigned char **b, int *m) {
  *b = NULL;
  if (compress_level <= 0) {
    FUNC3 ("compress_level should be strictly positive.\n");
    FUNC2 (1);
  }
  uLongf dest = FUNC1 (n);
  *b = FUNC4 (dest);
  int r = FUNC0 (*b, &dest, a, n, compress_level);
  if (r != Z_OK) {
    FUNC3 ("compress2 returns error code %d.\n", r);
    FUNC2 (1);
  }
  if (dest > INT_MAX) {
    FUNC3 ("compressed data is greater than 2G\n");
    FUNC2 (1);
  }
  *m = dest;
}