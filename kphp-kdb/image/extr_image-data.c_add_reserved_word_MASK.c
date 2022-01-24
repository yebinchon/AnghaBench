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
typedef  int /*<<< orphan*/  fpr_t ;

/* Variables and functions */
 int /*<<< orphan*/ * RESERVED_WORDS_F ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,int) ; 

__attribute__((used)) static int FUNC3 (const char* cmd, fpr_t f) {
  int i = FUNC1 (cmd, 1);
  FUNC0 (i >= 0);
  RESERVED_WORDS_F[i] = f;
  FUNC2 (3, "add_reserved_word %s at slot %d\n", cmd, i);
  return i;
}