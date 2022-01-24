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
typedef  TYPE_1__* ws_t ;
typedef  int /*<<< orphan*/  ws_status ;
struct TYPE_3__ {scalar_t__* is_debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  WS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char**,char const*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t,char*) ; 

ws_status FUNC3(ws_t self, const char *message,
    const char *buf, size_t length) {
  //ws_private_t my = self->private_state;
  if (self->is_debug && *self->is_debug) {
    char *text;
    FUNC0(&text, buf, length, 80, 50);
    FUNC2("%s[%zd]:\n%s\n", message, length, text);
    FUNC1(text);
  }
  return WS_SUCCESS;
}