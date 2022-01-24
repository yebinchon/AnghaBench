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
struct bitreader {int dummy; } ;
typedef  int /*<<< orphan*/  hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct bitreader*) ; 
 int FUNC2 (struct bitreader*) ; 
 int /*<<< orphan*/  FUNC3 (struct bitreader*,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int*) ; 

int FUNC5 (hash_t word) {
  int len;
  unsigned char *ptr = FUNC4 (word, &len);
  if (!ptr) {
    return 0;
  }
  struct bitreader br;
  FUNC3 (&br, ptr, 0);
  int x = FUNC1 (&br);
  FUNC0 (FUNC2 (&br) <= len * 8);
  return x;
}