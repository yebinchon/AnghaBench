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
typedef  int /*<<< orphan*/  mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMP_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value klass)
{
#ifdef _WIN32
  mrb_raise(mrb, E_NOTIMP_ERROR, "socketpair unsupported on Windows");
  return mrb_nil_value();
#else
  mrb_value ary;
  mrb_int domain, type, protocol;
  int sv[2];

  FUNC3(mrb, "iii", &domain, &type, &protocol);
  if (FUNC7(domain, type, protocol, sv) == -1) {
    FUNC6(mrb, "socketpair");
  }
  // XXX: possible descriptor leakage here!
  ary = FUNC0(mrb, 2);
  FUNC1(mrb, ary, FUNC2(sv[0]));
  FUNC1(mrb, ary, FUNC2(sv[1]));
  return ary;
#endif
}