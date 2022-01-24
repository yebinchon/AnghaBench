#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ws_t ;
typedef  int /*<<< orphan*/  ws_status ;
typedef  TYPE_3__* ws_private_t ;
struct TYPE_9__ {TYPE_1__* in; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* on_error ) (TYPE_2__*,char*) ;TYPE_3__* private_state; } ;
struct TYPE_7__ {char* in_head; char const* in_tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  WS_SUCCESS ; 
 char* FUNC0 (char const*,int) ; 
 char* FUNC1 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 

ws_status FUNC4(ws_t self,
    char **to_key, char **to_val) {
  ws_private_t my = self->private_state;
  const char *in_head = my->in->in_head;
  size_t in_length = my->in->in_tail - in_head;

  *to_key = NULL;
  *to_val = NULL;
  char *line_end = FUNC1(in_head, "\r\n", in_length);
  if (!line_end) {
    return self->on_error(self, "Missing \\r\\n");
  }
  if (in_head < line_end) {
    const char *k_start = in_head;
    if (*k_start == ' ') {
      return self->on_error(self, "TODO header continuation");
    }
    const char *k_end = k_start;
    while (++k_end < line_end && *k_end != ':') {
    }
    const char *v_start = k_end;
    while (++v_start < line_end && *v_start == ' ') {
    }
    const char *v_end = line_end;
    while (v_end > v_start && v_end[-1] == ' ') {
      v_end--;
    }
    *to_key = FUNC0(k_start, k_end - k_start);
    *to_val = FUNC0(v_start, v_end - v_start);
  }
  my->in->in_head = line_end + 2;
  return WS_SUCCESS;
}