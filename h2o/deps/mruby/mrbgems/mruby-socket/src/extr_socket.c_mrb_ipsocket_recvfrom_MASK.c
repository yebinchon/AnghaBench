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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
typedef  int /*<<< orphan*/  fsize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value self)
{
  struct sockaddr_storage ss;
  socklen_t socklen;
  mrb_value a, buf, pair;
  mrb_int flags, maxlen;
  ssize_t n;
  int fd;

  fd = FUNC9(mrb, self);
  flags = 0;
  FUNC3(mrb, "i|i", &maxlen, &flags);
  buf = FUNC4(mrb, maxlen);
  socklen = sizeof(ss);
  n = FUNC7(fd, FUNC0(buf), (fsize_t)maxlen, (int)flags,
  	       (struct sockaddr *)&ss, &socklen);
  if (n == -1) {
    FUNC6(mrb, "recvfrom");
  }
  FUNC5(mrb, buf, (mrb_int)n);
  a = FUNC8(mrb, (struct sockaddr *)&ss, socklen);
  pair = FUNC1(mrb, 2);
  FUNC2(mrb, pair, buf);
  FUNC2(mrb, pair, a);
  return pair;
}