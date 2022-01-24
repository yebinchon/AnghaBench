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
struct stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

mrb_value
FUNC4(mrb_state *mrb, mrb_value klass)
{
  struct stat st;
  mrb_value obj;

  FUNC1(mrb, "o", &obj);

  if (FUNC2(mrb, obj, &st) < 0)
    return FUNC0();
  if (st.st_size == 0)
    return FUNC3();

  return FUNC0();
}