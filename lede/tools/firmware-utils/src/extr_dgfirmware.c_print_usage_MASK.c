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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1(void)
{
  FUNC0(stderr, "usage: dgfirmware [<opts>] <img>\n");
  FUNC0(stderr, "  <img>               firmware image filename\n");
  FUNC0(stderr, "  <opts>  -h          print this message\n");
  FUNC0(stderr, "          -f          fix the checksum\n");
  FUNC0(stderr, "          -x  <file>  extract the rootfs file to <file>\n");
  FUNC0(stderr, "          -xk <file>  extract the kernel to <file>\n");
  FUNC0(stderr, "          -m  <file>  merge in rootfs fil\e from <file>\n");
  FUNC0(stderr, "          -k  <file>  merge in kernel from <file>\n");
  FUNC0(stderr, "          -w  <file>  write back the modified firmware\n");
}