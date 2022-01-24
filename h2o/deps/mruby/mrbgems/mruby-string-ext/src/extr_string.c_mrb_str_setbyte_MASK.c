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
typedef  int mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_INDEX_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value str)
{
  mrb_int pos, byte;
  mrb_int len;

  FUNC3(mrb, "ii", &pos, &byte);

  len = FUNC0(str);
  if (pos < -len || len <= pos)
    FUNC4(mrb, E_INDEX_ERROR, "index %S is out of array", FUNC2(pos));
  if (pos < 0)
    pos += len;

  FUNC5(mrb, FUNC6(str));
  byte &= 0xff;
  FUNC1(str)[pos] = (unsigned char)byte;
  return FUNC2((unsigned char)byte);
}