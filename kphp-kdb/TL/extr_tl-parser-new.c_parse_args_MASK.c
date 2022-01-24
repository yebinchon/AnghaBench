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
struct tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_args1 ; 
 int /*<<< orphan*/  parse_args2 ; 
 int /*<<< orphan*/  parse_args3 ; 
 int /*<<< orphan*/  parse_args4 ; 
 int /*<<< orphan*/  type_args ; 

struct tree *FUNC2 (void) {
  FUNC0 (type_args);
  FUNC1 (parse_args1);
  FUNC1 (parse_args2);
  FUNC1 (parse_args3);
  FUNC1 (parse_args4);
  PARSE_FAIL;
}