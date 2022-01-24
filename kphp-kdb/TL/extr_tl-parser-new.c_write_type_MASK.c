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
struct tl_type {int name; int constructors_num; int flags; int params_num; int /*<<< orphan*/  params_types; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int TLS_TYPE ; 
 int schema_version ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 (struct tl_type *t) {
  FUNC0 (schema_version >= 1 ? TLS_TYPE : 1);
  FUNC0 (t->name);
  FUNC2 (t->id);
  FUNC0 (t->constructors_num);
  FUNC0 (t->flags);
  FUNC0 (t->params_num);
  FUNC1 (t->params_types);
}