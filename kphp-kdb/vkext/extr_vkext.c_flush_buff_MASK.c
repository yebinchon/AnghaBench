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
 scalar_t__ buff ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ result_buff ; 
 scalar_t__ result_buff_len ; 
 scalar_t__ result_buff_pos ; 
 scalar_t__ wptr ; 

void FUNC2 () {
  while (result_buff_pos + (wptr - buff) > result_buff_len) {
    FUNC1 ();
  }  
  FUNC0 (result_buff + result_buff_pos, buff, wptr - buff);
  result_buff_pos += (wptr - buff);
  wptr = buff;  
}