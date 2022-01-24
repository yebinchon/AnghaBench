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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (const u32 *salt_buf, const u32 salt_len, u8 *salt_pc)
{
  u32 digest[4] = { 0 };

  FUNC0 (digest, salt_buf, salt_len);

  FUNC1 (digest[0], salt_pc +  0);
  FUNC1 (digest[1], salt_pc +  8);
  FUNC1 (digest[2], salt_pc + 16);
  FUNC1 (digest[3], salt_pc + 24);
}