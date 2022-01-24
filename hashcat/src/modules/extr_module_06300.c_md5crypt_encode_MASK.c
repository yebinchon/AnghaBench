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
typedef  int u8 ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static void FUNC1 (const u8 digest[16], u8 buf[22])
{
  int l;

  l = (digest[ 0] << 16) | (digest[ 6] << 8) | (digest[12] << 0);

  buf[ 0] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 1] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 2] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 3] = FUNC0 (l & 0x3f); //l >>= 6;

  l = (digest[ 1] << 16) | (digest[ 7] << 8) | (digest[13] << 0);

  buf[ 4] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 5] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 6] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 7] = FUNC0 (l & 0x3f); //l >>= 6;

  l = (digest[ 2] << 16) | (digest[ 8] << 8) | (digest[14] << 0);

  buf[ 8] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 9] = FUNC0 (l & 0x3f); l >>= 6;
  buf[10] = FUNC0 (l & 0x3f); l >>= 6;
  buf[11] = FUNC0 (l & 0x3f); //l >>= 6;

  l = (digest[ 3] << 16) | (digest[ 9] << 8) | (digest[15] << 0);

  buf[12] = FUNC0 (l & 0x3f); l >>= 6;
  buf[13] = FUNC0 (l & 0x3f); l >>= 6;
  buf[14] = FUNC0 (l & 0x3f); l >>= 6;
  buf[15] = FUNC0 (l & 0x3f); //l >>= 6;

  l = (digest[ 4] << 16) | (digest[10] << 8) | (digest[ 5] << 0);

  buf[16] = FUNC0 (l & 0x3f); l >>= 6;
  buf[17] = FUNC0 (l & 0x3f); l >>= 6;
  buf[18] = FUNC0 (l & 0x3f); l >>= 6;
  buf[19] = FUNC0 (l & 0x3f); //l >>= 6;

  l = (digest[11] << 0);

  buf[20] = FUNC0 (l & 0x3f); l >>= 6;
  buf[21] = FUNC0 (l & 0x3f); //l >>= 6;
}