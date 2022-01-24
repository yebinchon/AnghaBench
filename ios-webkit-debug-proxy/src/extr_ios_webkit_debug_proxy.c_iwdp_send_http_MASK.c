#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ws_t ;
typedef  int /*<<< orphan*/  ws_status ;
struct TYPE_5__ {int /*<<< orphan*/  (* send_data ) (TYPE_1__*,char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* on_error ) (TYPE_1__*,char*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char const*,int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

ws_status FUNC6(ws_t ws, bool is_head, const char *status,
    const char *resource, const char *content) {
  char *ctype;
  FUNC2(resource, false, &ctype);
  char *data;
  if (FUNC0(&data,
      "HTTP/1.1 %s\r\n"
      "Content-length: %d\r\n"
      "Connection: close"
      "%s%s\r\n\r\n%s",
      status, (content ? FUNC3(content) : 0),
      (ctype ? "\r\nContent-Type: " : ""), (ctype ? ctype : ""),
      (content && !is_head ? content : "")) < 0) {
    return ws->on_error(ws, "asprintf failed");
  }
  FUNC1(ctype);
  ws_status ret = ws->send_data(ws, data, FUNC3(data));
  FUNC1(data);
  return ret;
}