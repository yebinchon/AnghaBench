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
 int /*<<< orphan*/  alloc_history_strings ; 
 int alloc_history_strings_size ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static inline char *FUNC3 (const char *string, int length) {
  FUNC0 ((unsigned) length <= 65535);
  char *ptr = FUNC1 (length + 3) + 2;
  *((short *)(ptr - 2)) = length;
  FUNC2 (ptr, string, length);
  ptr[length] = 0;
  alloc_history_strings++;
  alloc_history_strings_size += length + 3;
  return ptr;
}