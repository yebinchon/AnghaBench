#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_3__ {char* base; } ;
typedef  TYPE_1__ uv_buf_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_EOF ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int got_eof ; 
 int got_q ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  tcp ; 

__attribute__((used)) static void FUNC3(uv_stream_t* t, ssize_t nread, const uv_buf_t* buf) {
  FUNC0((uv_tcp_t*)t == &tcp);

  if (nread == 0) {
    FUNC1(buf->base);
    return;
  }

  if (!got_q) {
    FUNC0(nread == 1);
    FUNC0(!got_eof);
    FUNC0(buf->base[0] == 'Q');
    FUNC1(buf->base);
    got_q = 1;
    FUNC2("got Q");
  } else {
    FUNC0(nread == UV_EOF);
    if (buf->base) {
      FUNC1(buf->base);
    }
    got_eof = 1;
    FUNC2("got EOF");
  }
}