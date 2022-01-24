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
 int BUFF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  result_buff ; 
 int result_buff_len ; 

void FUNC2 () {
  if (!result_buff_len) {
    result_buff = FUNC0 (BUFF_LEN);
    result_buff_len = BUFF_LEN;
  } else {
    result_buff = FUNC1 (result_buff, 2 * result_buff_len);
    result_buff_len *= 2;
  }
}