#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_ext_small_t ;
struct tree_payload {scalar_t__ text; } ;
struct TYPE_2__ {scalar_t__ N; } ;

/* Variables and functions */
 struct tree_payload* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ OTree ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*) ; 
 int new_text_cur_offset ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5 (tree_ext_small_t *T) {
  FUNC4 (new_text_cur_offset);
  struct tree_payload *P = FUNC0 (T);
  int text_len;
  if (P->text) {
    text_len = FUNC2 (P->text);
  } else {
    FUNC3 (OTree.N - FUNC1 (T), &text_len);
  }
  new_text_cur_offset += text_len;
  return 0;
}