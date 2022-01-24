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
typedef  int uint16_t ;
struct TYPE_3__ {int payloadlen; } ;
typedef  TYPE_1__ WSFrame ;

/* Variables and functions */
 int FUNC0 (char const) ; 
#define  WS_PAYLOAD_EXT16 129 
#define  WS_PAYLOAD_EXT64 128 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,char const*,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (WSFrame * frm, const char *buf)
{
  uint64_t payloadlen = 0, len64;
  uint16_t len16;

  /* determine the payload length, else read more data */
  payloadlen = FUNC0 (*(buf + 1));
  switch (payloadlen) {
  case WS_PAYLOAD_EXT16:
    FUNC2 (&len16, (buf + 2), sizeof (uint16_t));
    frm->payloadlen = FUNC3 (len16);
    break;
  case WS_PAYLOAD_EXT64:
    FUNC2 (&len64, (buf + 2), sizeof (uint64_t));
    frm->payloadlen = FUNC1 (len64);
    break;
  default:
    frm->payloadlen = payloadlen;
  }
}