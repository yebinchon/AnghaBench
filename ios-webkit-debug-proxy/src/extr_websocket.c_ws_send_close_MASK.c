#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ws_t ;
typedef  int /*<<< orphan*/  ws_status ;
typedef  int ws_close ;
struct TYPE_4__ {int /*<<< orphan*/  (* send_frame ) (TYPE_1__*,int,int /*<<< orphan*/ ,int,char*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OPCODE_CLOSE ; 
 int /*<<< orphan*/  WS_ERROR ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int,char*,size_t) ; 

ws_status FUNC5(ws_t self, ws_close close_code, const char *reason) {
  size_t length = 2 + (reason ? FUNC3(reason) : 0);
  char *data = (char *)FUNC0(length+1, sizeof(char));
  if (!data) {
    return WS_ERROR;
  }
  data[0] = ((close_code >> 8) & 0xFF);
  data[1] = (close_code & 0xFF);
  if (reason) {
    FUNC2(data+2, reason);
  }
  ws_status ret = self->send_frame(self,
      true, OPCODE_CLOSE, false,
      data, length);
  FUNC1(data);
  return ret;
}