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
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int* is_letter ; 
 int /*<<< orphan*/  sigil_word_detect ; 
 int /*<<< orphan*/  std_sigil_word_detect ; 

void FUNC2 (void) {
  FUNC0 ('@');
  FUNC0 ('#');
  FUNC0 ('$');
  FUNC0 ('%');
  FUNC0 ('*');
  FUNC0 ('[');
  FUNC1 (']');
  FUNC1 ('_');
  FUNC1 ('-');
  FUNC1 ('.');
  is_letter['_'] = 4;
  sigil_word_detect = std_sigil_word_detect;
}