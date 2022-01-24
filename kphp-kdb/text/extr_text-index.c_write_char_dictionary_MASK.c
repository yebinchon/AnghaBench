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
struct char_dictionary {int* code_len; int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

void FUNC4 (struct char_dictionary *Dict) {
  static int dict_size = 256;
  FUNC0 ();
  FUNC3 (&dict_size, 4);
  FUNC3 (Dict->code_len, 256);
  FUNC2 ();
  FUNC1 (Dict->freq);
  FUNC2 ();
}