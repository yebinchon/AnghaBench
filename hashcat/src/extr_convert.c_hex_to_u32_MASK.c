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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 

u32 FUNC1 (const u8 hex[8])
{
  u32 v = 0;

  v |= ((u32) FUNC0 (hex[1]) <<  0);
  v |= ((u32) FUNC0 (hex[0]) <<  4);
  v |= ((u32) FUNC0 (hex[3]) <<  8);
  v |= ((u32) FUNC0 (hex[2]) << 12);
  v |= ((u32) FUNC0 (hex[5]) << 16);
  v |= ((u32) FUNC0 (hex[4]) << 20);
  v |= ((u32) FUNC0 (hex[7]) << 24);
  v |= ((u32) FUNC0 (hex[6]) << 28);

  return (v);
}