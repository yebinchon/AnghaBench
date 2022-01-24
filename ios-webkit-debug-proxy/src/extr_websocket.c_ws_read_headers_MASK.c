#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ws_t ;
typedef  int /*<<< orphan*/  ws_status ;
typedef  TYPE_2__* ws_private_t ;
struct TYPE_6__ {char* protocol; char* sec_key; char* req_host; int is_websocket; int /*<<< orphan*/  version; } ;
struct TYPE_5__ {TYPE_2__* private_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  WS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 void* FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char**,char**) ; 

ws_status FUNC7(ws_t self) {
  ws_private_t my = self->private_state;

  bool is_connection = false;
  bool is_upgrade = false;
  while (1) {
    char *key;
    char *val;
    if (FUNC6(self, &key, &val) || !key) {
      break;
    }
    if (!FUNC1(key, "Connection")) {
      // firefox uses "keep-alive, Upgrade"
      is_connection = (FUNC2(val, "Upgrade") ? 1 : 0);
    } else if (!FUNC1(key, "Upgrade")) {
      is_upgrade = !FUNC1(val, "WebSocket");
    } else if (!FUNC1(key, "Sec-WebSocket-Protocol")) {
      FUNC0(my->protocol);
      my->protocol = FUNC3(val);
    } else if (!FUNC1(key, "Sec-WebSocket-Version")) {
      my->version = FUNC5(val, NULL, 0);
    } else if (!FUNC1(key, "Sec-WebSocket-Key")) {
      FUNC0(my->sec_key);
      my->sec_key = FUNC3(val);
    } else if (!FUNC1(key, "Host")) {
      FUNC0(my->req_host);
      char *p = FUNC4(val, ':');
      if (p) {
        *p = 0;
      }
      my->req_host = FUNC3(val);
    }
    FUNC0(key);
    FUNC0(val);
  }

  my->is_websocket = (is_connection && is_upgrade && my->sec_key);
  return WS_SUCCESS;
}