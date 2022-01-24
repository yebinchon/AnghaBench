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
 int FUNC0 (char const*,int) ; 

unsigned FUNC1 (const char *key, int key_len) {
//  unsigned hash = (crc32 (key, key_len) >> 16) & 0x7fff;
  unsigned hash = (FUNC0 (key, key_len) >> 8) & 0x7fffff;
  return hash ? hash : 1;
}