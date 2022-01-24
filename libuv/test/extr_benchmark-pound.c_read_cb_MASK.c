#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int i; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UV_ECONNRESET ; 
 scalar_t__ UV_EOF ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  conns_failed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__* p ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(uv_stream_t* stream, ssize_t nread, const uv_buf_t* buf) {

  FUNC0(stream != NULL);

#if DEBUG
  printf("read_cb %d\n", p->i);
#endif

  FUNC3((uv_handle_t*)stream, close_cb);

  if (nread < 0) {
    if (nread == UV_EOF) {
      ;
    } else if (nread == UV_ECONNRESET) {
      conns_failed++;
    } else {
      FUNC1(stderr, "read error %s\n", FUNC4(nread));
      FUNC0(0);
    }
  }
}