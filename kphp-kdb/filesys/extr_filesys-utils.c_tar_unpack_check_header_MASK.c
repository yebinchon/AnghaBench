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
 int FUNC1 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC4 (const char header[512]) {
  int i, sum = 0;
  for (i = 0; i < 512; i++) {
    sum += (unsigned char) header[i];
  }
  if (!sum) {
    return 0;
  }
  int x = 0;
  for (i = 148; i < 156; i++) {
    x += (unsigned char) header[i];
  }
  sum += 32 * 8 - x;
  int chksum = FUNC1 (header, 148, 6);
  if (sum != chksum) {
    FUNC2 ("broken header, chksum = %d, but sum = %d\n", chksum, sum);
    FUNC0 (sum == chksum);
  }
  FUNC0 (!FUNC3 (header + 257, "ustar", 5));
  return 1;
}