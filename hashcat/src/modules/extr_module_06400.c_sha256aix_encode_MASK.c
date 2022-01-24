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

__attribute__((used)) static void FUNC1 (const u8 digest[32], u8 buf[43])
{
  int l;

  l = (digest[ 2] << 0) | (digest[ 1] << 8) | (digest[ 0] << 16);

  buf[ 0] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 1] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 2] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 3] = FUNC0 (l & 0x3f);

  l = (digest[ 5] << 0) | (digest[ 4] << 8) | (digest[ 3] << 16);

  buf[ 4] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 5] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 6] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 7] = FUNC0 (l & 0x3f);

  l = (digest[ 8] << 0) | (digest[ 7] << 8) | (digest[ 6] << 16);

  buf[ 8] = FUNC0 (l & 0x3f); l >>= 6;
  buf[ 9] = FUNC0 (l & 0x3f); l >>= 6;
  buf[10] = FUNC0 (l & 0x3f); l >>= 6;
  buf[11] = FUNC0 (l & 0x3f);

  l = (digest[11] << 0) | (digest[10] << 8) | (digest[ 9] << 16);

  buf[12] = FUNC0 (l & 0x3f); l >>= 6;
  buf[13] = FUNC0 (l & 0x3f); l >>= 6;
  buf[14] = FUNC0 (l & 0x3f); l >>= 6;
  buf[15] = FUNC0 (l & 0x3f);

  l = (digest[14] << 0) | (digest[13] << 8) | (digest[12] << 16);

  buf[16] = FUNC0 (l & 0x3f); l >>= 6;
  buf[17] = FUNC0 (l & 0x3f); l >>= 6;
  buf[18] = FUNC0 (l & 0x3f); l >>= 6;
  buf[19] = FUNC0 (l & 0x3f);

  l = (digest[17] << 0) | (digest[16] << 8) | (digest[15] << 16);

  buf[20] = FUNC0 (l & 0x3f); l >>= 6;
  buf[21] = FUNC0 (l & 0x3f); l >>= 6;
  buf[22] = FUNC0 (l & 0x3f); l >>= 6;
  buf[23] = FUNC0 (l & 0x3f);

  l = (digest[20] << 0) | (digest[19] << 8) | (digest[18] << 16);

  buf[24] = FUNC0 (l & 0x3f); l >>= 6;
  buf[25] = FUNC0 (l & 0x3f); l >>= 6;
  buf[26] = FUNC0 (l & 0x3f); l >>= 6;
  buf[27] = FUNC0 (l & 0x3f);

  l = (digest[23] << 0) | (digest[22] << 8) | (digest[21] << 16);

  buf[28] = FUNC0 (l & 0x3f); l >>= 6;
  buf[29] = FUNC0 (l & 0x3f); l >>= 6;
  buf[30] = FUNC0 (l & 0x3f); l >>= 6;
  buf[31] = FUNC0 (l & 0x3f);

  l = (digest[26] << 0) | (digest[25] << 8) | (digest[24] << 16);

  buf[32] = FUNC0 (l & 0x3f); l >>= 6;
  buf[33] = FUNC0 (l & 0x3f); l >>= 6;
  buf[34] = FUNC0 (l & 0x3f); l >>= 6;
  buf[35] = FUNC0 (l & 0x3f);

  l = (digest[29] << 0) | (digest[28] << 8) | (digest[27] << 16);

  buf[36] = FUNC0 (l & 0x3f); l >>= 6;
  buf[37] = FUNC0 (l & 0x3f); l >>= 6;
  buf[38] = FUNC0 (l & 0x3f); l >>= 6;
  buf[39] = FUNC0 (l & 0x3f);

  l =                 0 | (digest[31] << 8) | (digest[30] << 16);

  buf[40] = FUNC0 (l & 0x3f); l >>= 6;
  buf[41] = FUNC0 (l & 0x3f); l >>= 6;
  buf[42] = FUNC0 (l & 0x3f); //l >>= 6;
}