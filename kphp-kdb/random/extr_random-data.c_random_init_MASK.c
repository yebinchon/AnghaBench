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
 int /*<<< orphan*/  B ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char const* const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ qleft ; 
 scalar_t__ qright ; 
 int qsize ; 
 scalar_t__ qtotal ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5 (int key_size, int buffer_size, const char *const password_filename, int password_length) {
  int i;
  if (buffer_size <= 0) {
    buffer_size = 256 << 20;
  }
  buffer = FUNC4 (buffer_size);
  qsize = buffer_size;
  qleft = 0;
  qright = 0;
  qtotal = 0;

  if (FUNC0 (&B, key_size, password_filename, password_length) < 0) {
    FUNC3 ("Random number generator initialization failed.\n");
    FUNC2 (1);
  }

  for (i = 1; i <= 64; i++) {
    FUNC1 (&B);
  }
}