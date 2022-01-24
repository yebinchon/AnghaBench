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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_SOCKET_ERROR ; 
 int /*<<< orphan*/  NI_MAXHOST ; 
 int /*<<< orphan*/  NI_MAXSERV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct sockaddr*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static mrb_value
FUNC16(mrb_state *mrb, mrb_value self)
{
  mrb_int flags;
  mrb_value ary, host, sastr, serv;
  int error;

  flags = 0;
  FUNC6(mrb, "|i", &flags);
  host = FUNC11(mrb, NI_MAXHOST);
  serv = FUNC11(mrb, NI_MAXSERV);

  sastr = FUNC8(mrb, self, FUNC7(mrb, "@sockaddr"));
  if (!FUNC14(sastr)) {
    FUNC9(mrb, E_SOCKET_ERROR, "invalid sockaddr");
  }
  error = FUNC3((struct sockaddr *)FUNC1(sastr), (socklen_t)FUNC0(sastr), FUNC1(host), NI_MAXHOST, FUNC1(serv), NI_MAXSERV, (int)flags);
  if (error) {
    FUNC10(mrb, E_SOCKET_ERROR, "getnameinfo: %S", FUNC12(mrb, FUNC2(error)));
  }
  ary = FUNC4(mrb, 2);
  FUNC13(mrb, host, FUNC15(FUNC1(host)));
  FUNC5(mrb, ary, host);
  FUNC13(mrb, serv, FUNC15(FUNC1(serv)));
  FUNC5(mrb, ary, serv);
  return ary;
}