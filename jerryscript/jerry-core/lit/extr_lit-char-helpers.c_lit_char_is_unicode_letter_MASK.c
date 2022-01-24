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
typedef  int /*<<< orphan*/  ecma_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lit_unicode_letter_chars ; 
 int /*<<< orphan*/  lit_unicode_letter_interval_lengths ; 
 int /*<<< orphan*/  lit_unicode_letter_interval_sps ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (ecma_char_t c) /**< code unit */
{
  return (FUNC2 (c,
                                         lit_unicode_letter_interval_sps,
                                         lit_unicode_letter_interval_lengths,
                                         FUNC0 (lit_unicode_letter_interval_sps))
          || FUNC1 (c, lit_unicode_letter_chars, FUNC0 (lit_unicode_letter_chars)));
}