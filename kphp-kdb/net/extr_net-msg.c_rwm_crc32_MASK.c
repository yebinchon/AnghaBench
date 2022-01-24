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
struct raw_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ crc32_process ; 
 int FUNC1 (struct raw_message*,int,void*,unsigned int*) ; 

unsigned FUNC2 (struct raw_message *raw, int bytes) {
  unsigned crc32 = ~0;

  FUNC0 (FUNC1 (raw, bytes, (void *)crc32_process, &crc32) == bytes);

  return ~crc32;
}