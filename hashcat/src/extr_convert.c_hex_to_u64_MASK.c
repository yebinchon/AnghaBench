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
typedef  int u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 

u64 FUNC1 (const u8 hex[16])
{
  u64 v = 0;

  v |= ((u64) FUNC0 (hex[ 1]) <<  0);
  v |= ((u64) FUNC0 (hex[ 0]) <<  4);
  v |= ((u64) FUNC0 (hex[ 3]) <<  8);
  v |= ((u64) FUNC0 (hex[ 2]) << 12);
  v |= ((u64) FUNC0 (hex[ 5]) << 16);
  v |= ((u64) FUNC0 (hex[ 4]) << 20);
  v |= ((u64) FUNC0 (hex[ 7]) << 24);
  v |= ((u64) FUNC0 (hex[ 6]) << 28);
  v |= ((u64) FUNC0 (hex[ 9]) << 32);
  v |= ((u64) FUNC0 (hex[ 8]) << 36);
  v |= ((u64) FUNC0 (hex[11]) << 40);
  v |= ((u64) FUNC0 (hex[10]) << 44);
  v |= ((u64) FUNC0 (hex[13]) << 48);
  v |= ((u64) FUNC0 (hex[12]) << 52);
  v |= ((u64) FUNC0 (hex[15]) << 56);
  v |= ((u64) FUNC0 (hex[14]) << 60);

  return (v);
}