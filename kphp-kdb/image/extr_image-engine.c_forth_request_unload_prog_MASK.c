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
struct forth_request {int /*<<< orphan*/ * prog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct forth_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct forth_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct forth_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct forth_request*) ; 
 int /*<<< orphan*/  with_output_free_list ; 
 int /*<<< orphan*/  without_output_free_list ; 

__attribute__((used)) static void FUNC5 (struct forth_request *E) {
  FUNC4 (&with_output_free_list, E);
  FUNC0 (E->prog != NULL);
  FUNC1 (E);
  FUNC0 (E->prog == NULL);
  FUNC3 (&without_output_free_list, E);
  FUNC2 (E);
}