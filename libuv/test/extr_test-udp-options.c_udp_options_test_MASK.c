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
typedef  int /*<<< orphan*/  uv_udp_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int UV_EINVAL ; 
 int UV_ENOTSUP ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(const struct sockaddr* addr) {
  static int invalid_ttls[] = { -1, 0, 256 };
  uv_loop_t* loop;
  uv_udp_t h;
  int i, r;

  loop = FUNC3();

  r = FUNC6(loop, &h);
  FUNC1(r == 0);

  FUNC11((uv_handle_t*)&h); /* don't keep the loop alive */

  r = FUNC5(&h, addr, 0);
  FUNC1(r == 0);

  r = FUNC7(&h, 1);
  r |= FUNC7(&h, 1);
  r |= FUNC7(&h, 0);
  r |= FUNC7(&h, 0);
  FUNC1(r == 0);

  /* values 1-255 should work */
  for (i = 1; i <= 255; i++) {
    r = FUNC10(&h, i);
#if defined(__MVS__)
    if (addr->sa_family == AF_INET6)
      ASSERT(r == 0);
    else
      ASSERT(r == UV_ENOTSUP);
#else
    FUNC1(r == 0);
#endif
  }

  for (i = 0; i < (int) FUNC0(invalid_ttls); i++) {
    r = FUNC10(&h, invalid_ttls[i]);
    FUNC1(r == UV_EINVAL);
  }

  r = FUNC8(&h, 1);
  r |= FUNC8(&h, 1);
  r |= FUNC8(&h, 0);
  r |= FUNC8(&h, 0);
  FUNC1(r == 0);

  /* values 0-255 should work */
  for (i = 0; i <= 255; i++) {
    r = FUNC9(&h, i);
    FUNC1(r == 0);
  }

  /* anything >255 should fail */
  r = FUNC9(&h, 256);
  FUNC1(r == UV_EINVAL);
  /* don't test ttl=-1, it's a valid value on some platforms */

  r = FUNC4(loop, UV_RUN_DEFAULT);
  FUNC1(r == 0);

  FUNC2();
  return 0;
}