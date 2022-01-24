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
 int BROTLI_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC1(void) {
  int major = BROTLI_VERSION >> 24;
  int minor = (BROTLI_VERSION >> 12) & 0xFFF;
  int patch = BROTLI_VERSION & 0xFFF;
  FUNC0(stdout, "brotli %d.%d.%d\n", major, minor, patch);
}