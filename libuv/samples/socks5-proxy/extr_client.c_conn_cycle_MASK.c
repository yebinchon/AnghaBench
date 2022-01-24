#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
struct TYPE_8__ {scalar_t__ result; scalar_t__ wrstate; scalar_t__ rdstate; TYPE_1__ t; } ;
typedef  TYPE_2__ conn ;

/* Variables and functions */
 scalar_t__ UV_EOF ; 
 scalar_t__ c_done ; 
 scalar_t__ c_stop ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(const char *who, conn *a, conn *b) {
  if (a->result < 0) {
    if (a->result != UV_EOF) {
      FUNC2("%s error: %s", who, FUNC3(a->result));
    }
    return -1;
  }

  if (b->result < 0) {
    return -1;
  }

  if (a->wrstate == c_done) {
    a->wrstate = c_stop;
  }

  /* The logic is as follows: read when we don't write and write when we don't
   * read.  That gives us back-pressure handling for free because if the peer
   * sends data faster than we consume it, TCP congestion control kicks in.
   */
  if (a->wrstate == c_stop) {
    if (b->rdstate == c_stop) {
      FUNC0(b);
    } else if (b->rdstate == c_done) {
      FUNC1(a, b->t.buf, b->result);
      b->rdstate = c_stop;  /* Triggers the call to conn_read() above. */
    }
  }

  return 0;
}