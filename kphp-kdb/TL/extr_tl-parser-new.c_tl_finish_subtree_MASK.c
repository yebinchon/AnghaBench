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
struct tl_combinator_tree {scalar_t__ type; scalar_t__ type_len; int /*<<< orphan*/  act; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct tl_combinator_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_combinator_tree*) ; 
 scalar_t__ type_type ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6 (struct tl_combinator_tree *R) {
  FUNC4 (R);
  FUNC5 (2, "finish_subtree. Type = %s. Act = %s\n", FUNC2 (R->type), FUNC0 (R->act));
  if (R->type != type_type) {
    return 1;
  }
  if (R->type_len >= 0) {
    if (R->type_len > 0) {
      FUNC1 ("Not enough params\n");
      return 0;
    }
    return 1;
  }
  return FUNC3 (R, 0, 0);
}