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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* buff ; 
 size_t parse_pos ; 

unsigned FUNC1 (void) {
  if (buff[parse_pos] == ',') {
    parse_pos ++;
  }
  while (buff[parse_pos] == ' ') {
    parse_pos ++;
  }
  unsigned r = 0;
  FUNC0 (buff[parse_pos ++] == '"');
  r = buff[parse_pos ++];
  r = r * 256 + buff[parse_pos ++];
  FUNC0 (buff[parse_pos ++] == '"');
  FUNC0 (!buff[parse_pos] || buff[parse_pos] == ',' || buff[parse_pos] == 10 || buff[parse_pos] == 13);
  return r;
}