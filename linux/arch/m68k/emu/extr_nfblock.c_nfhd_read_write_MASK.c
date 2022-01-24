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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 scalar_t__ NFHD_READ_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nfhd_id ; 

__attribute__((used)) static inline s32 FUNC1(u32 major, u32 minor, u32 rwflag, u32 recno,
				  u32 count, u32 buf)
{
	return FUNC0(nfhd_id + NFHD_READ_WRITE, major, minor, rwflag, recno,
		       count, buf);
}