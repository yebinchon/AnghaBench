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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value klass)
{
  mrb_value ary, sastr;
  int s1;
  mrb_int s0;
  socklen_t socklen;

  FUNC5(mrb, "i", &s0);
  socklen = sizeof(struct sockaddr_storage);
  sastr = FUNC6(mrb, socklen);
  s1 = (int)FUNC1(s0, (struct sockaddr *)FUNC0(sastr), &socklen);
  if (s1 == -1) {
    FUNC8(mrb, "accept");
  }
  // XXX: possible descriptor leakage here!
  FUNC7(mrb, sastr, socklen);
  ary = FUNC2(mrb, 2);
  FUNC3(mrb, ary, FUNC4(s1));
  FUNC3(mrb, ary, sastr);
  return ary;
}