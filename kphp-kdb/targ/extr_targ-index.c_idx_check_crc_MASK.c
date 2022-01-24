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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* idx_filename ; 
 unsigned int FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static inline void FUNC5 (void) {
  unsigned crc32 = FUNC3 ();
  if ((unsigned) FUNC4() != crc32) {
    FUNC1 (stderr, "crc32 mismatch while reading snapshot %s at position %d\n", idx_filename, FUNC2 ());
    FUNC0 (0);
  }
}