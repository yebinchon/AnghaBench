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
 int /*<<< orphan*/  bytes_read ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idx_crc32_complement ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 void* FUNC4 (size_t) ; 

void FUNC5 (void *b, size_t len) {
  void *p = FUNC4 (len);
  FUNC0 (p != NULL);
  FUNC2 (b, p, len);
  idx_crc32_complement = FUNC1 (b, len, idx_crc32_complement);
  FUNC3 (len);
  bytes_read += len;
}