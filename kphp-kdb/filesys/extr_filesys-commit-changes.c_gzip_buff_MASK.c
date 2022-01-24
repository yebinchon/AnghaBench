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
 scalar_t__ Z_OK ; 
 scalar_t__ FUNC0 (unsigned char*,int*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  compress_level ; 
 unsigned char* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (unsigned char *a, int n, unsigned char **b, int *m) {
  *b = NULL;
  if (!compress_level) { return -1; }
  uLongf dest = FUNC1 (n);
  *b = FUNC2 (dest);
  if (FUNC0 (*b, &dest, a, n, compress_level) != Z_OK) {
    return -2;
  }
  *m = dest;
  return 0;
}