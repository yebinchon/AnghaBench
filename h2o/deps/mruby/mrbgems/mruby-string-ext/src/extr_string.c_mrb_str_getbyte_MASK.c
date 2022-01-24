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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static mrb_value
FUNC5(mrb_state *mrb, mrb_value str)
{
  mrb_int pos;
  FUNC3(mrb, "i", &pos);

  if (pos < 0)
    pos += FUNC0(str);
  if (pos < 0 ||  FUNC0(str) <= pos)
    return FUNC4();

  return FUNC2((unsigned char)FUNC1(str)[pos]);
}