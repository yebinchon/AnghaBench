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
 int FUNC0 (int const) ; 

__attribute__((used)) static void FUNC1 (u8 digest[20], const u8 buf[27])
{
  int l;

  l  = FUNC0 (buf[ 0]) <<  0;
  l |= FUNC0 (buf[ 1]) <<  6;
  l |= FUNC0 (buf[ 2]) << 12;
  l |= FUNC0 (buf[ 3]) << 18;

  digest[ 2] = (l >>  0) & 0xff;
  digest[ 1] = (l >>  8) & 0xff;
  digest[ 0] = (l >> 16) & 0xff;

  l  = FUNC0 (buf[ 4]) <<  0;
  l |= FUNC0 (buf[ 5]) <<  6;
  l |= FUNC0 (buf[ 6]) << 12;
  l |= FUNC0 (buf[ 7]) << 18;

  digest[ 5] = (l >>  0) & 0xff;
  digest[ 4] = (l >>  8) & 0xff;
  digest[ 3] = (l >> 16) & 0xff;

  l  = FUNC0 (buf[ 8]) <<  0;
  l |= FUNC0 (buf[ 9]) <<  6;
  l |= FUNC0 (buf[10]) << 12;
  l |= FUNC0 (buf[11]) << 18;

  digest[ 8] = (l >>  0) & 0xff;
  digest[ 7] = (l >>  8) & 0xff;
  digest[ 6] = (l >> 16) & 0xff;

  l  = FUNC0 (buf[12]) <<  0;
  l |= FUNC0 (buf[13]) <<  6;
  l |= FUNC0 (buf[14]) << 12;
  l |= FUNC0 (buf[15]) << 18;

  digest[11] = (l >>  0) & 0xff;
  digest[10] = (l >>  8) & 0xff;
  digest[ 9] = (l >> 16) & 0xff;

  l  = FUNC0 (buf[16]) <<  0;
  l |= FUNC0 (buf[17]) <<  6;
  l |= FUNC0 (buf[18]) << 12;
  l |= FUNC0 (buf[19]) << 18;

  digest[14] = (l >>  0) & 0xff;
  digest[13] = (l >>  8) & 0xff;
  digest[12] = (l >> 16) & 0xff;

  l  = FUNC0 (buf[20]) <<  0;
  l |= FUNC0 (buf[21]) <<  6;
  l |= FUNC0 (buf[22]) << 12;
  l |= FUNC0 (buf[23]) << 18;

  digest[17] = (l >>  0) & 0xff;
  digest[16] = (l >>  8) & 0xff;
  digest[15] = (l >> 16) & 0xff;

  l  = FUNC0 (buf[24]) <<  0;
  l |= FUNC0 (buf[25]) <<  6;
  l |= FUNC0 (buf[26]) << 12;

  digest[19] = (l >>  8) & 0xff;
  digest[18] = (l >> 16) & 0xff;
}