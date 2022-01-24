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
typedef  int uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ WSFrame ;

/* Variables and functions */
 int FUNC0 (char const) ; 
#define  WS_PAYLOAD_EXT16 129 
#define  WS_PAYLOAD_EXT64 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static void
FUNC2 (WSFrame * frm, const char *buf)
{
  uint64_t payloadlen = 0;

  /* determine the payload length, else read more data */
  payloadlen = FUNC0 (*(buf + 1));
  switch (payloadlen) {
  case WS_PAYLOAD_EXT16:
    FUNC1 (&frm->mask, buf + 4, sizeof (frm->mask));
    break;
  case WS_PAYLOAD_EXT64:
    FUNC1 (&frm->mask, buf + 10, sizeof (frm->mask));
    break;
  default:
    FUNC1 (&frm->mask, buf + 2, sizeof (frm->mask));
  }
}