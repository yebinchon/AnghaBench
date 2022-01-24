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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 

__attribute__((used)) static void FUNC4(void)
{
  uint8_t buf[32], buf2[32];
  FUNC3(buf, 0xff, sizeof buf);
  FUNC1(buf + 1, sizeof buf - 2);
  FUNC0(buf[0] == 0xff);
  FUNC0(buf[1] == 0x00);
  FUNC0(buf[16] == 0x00);
  FUNC0(buf[30] == 0x00);
  FUNC0(buf[31] == 0xff);

  FUNC2(buf2, buf, sizeof buf);
  FUNC0(buf2[0] == 0xff);
  FUNC0(buf2[1] == 0x00);
  FUNC0(buf2[16] == 0x00);
  FUNC0(buf2[30] == 0x00);
  FUNC0(buf2[31] == 0xff);

  FUNC3(buf2, 0xee, sizeof buf);
  FUNC0(buf2[0] == 0xee);
  FUNC0(buf2[1] == 0xee);
  FUNC0(buf2[2] == 0xee);
  FUNC0(buf2[3] == 0xee);
  FUNC0(buf2[30] == 0xee);
  FUNC0(buf2[31] == 0xee);
}