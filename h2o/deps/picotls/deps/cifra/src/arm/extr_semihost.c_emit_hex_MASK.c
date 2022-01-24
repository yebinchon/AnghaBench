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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* hex_chars ; 

void FUNC1(const void *ptr, size_t len)
{
  const uint8_t *bb = ptr;
  char byte[3];

  byte[2] = 0;

  for (size_t i = 0; i < len; i++)
  {
    byte[0] = hex_chars[(bb[i] >> 4) & 0xf];
    byte[1] = hex_chars[bb[i] & 0xf];
    FUNC0(byte);
  }
}