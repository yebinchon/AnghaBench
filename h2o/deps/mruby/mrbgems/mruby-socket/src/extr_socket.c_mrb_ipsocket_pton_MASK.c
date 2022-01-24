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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct in6_addr {int /*<<< orphan*/  s6_addr; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t AF_INET ; 
 size_t AF_INET6 ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int FUNC0 (size_t,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value klass)
{
  mrb_int af, n;
  char *bp, buf[50];

  FUNC2(mrb, "is", &af, &bp, &n);
  if ((size_t)n > sizeof(buf) - 1)
    FUNC4(mrb, E_ARGUMENT_ERROR, "invalid address");
  FUNC1(buf, bp, n);
  buf[n] = '\0';

  if (af == AF_INET) {
    struct in_addr in;
    if (FUNC0(AF_INET, buf, (void *)&in.s_addr) != 1)
      goto invalid;
    return FUNC5(mrb, (char*)&in.s_addr, 4);
  } else if (af == AF_INET6) {
    struct in6_addr in6;
    if (FUNC0(AF_INET6, buf, (void *)&in6.s6_addr) != 1)
      goto invalid;
    return FUNC5(mrb, (char*)&in6.s6_addr, 16);
  } else
    FUNC4(mrb, E_ARGUMENT_ERROR, "unsupported address family");

invalid:
  FUNC4(mrb, E_ARGUMENT_ERROR, "invalid address");
  return FUNC3(); /* dummy */
}