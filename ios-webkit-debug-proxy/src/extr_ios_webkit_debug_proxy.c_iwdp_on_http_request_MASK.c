#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ws_t ;
typedef  int /*<<< orphan*/  ws_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 

ws_status FUNC7(ws_t ws,
    const char *method, const char *resource, const char *version,
    const char *host, const char *headers, size_t headers_length,
    bool is_websocket, bool *to_keep_alive) {
  bool is_get = !FUNC4(method, "GET");
  bool is_head = !is_get && !FUNC4(method, "HEAD");
  if (is_websocket) {
    if (is_get && !FUNC6(resource, "/devtools/page/", 15)) {
      return FUNC0(ws, resource);
    }
  } else {
    if (!is_get && !is_head) {
      return FUNC2(ws, is_head, resource, "Method Not Allowed");
    }

    if (!FUNC5(resource) || !FUNC4(resource, "/")) {
      return FUNC1(ws, is_head, false, host);
    } else if (!FUNC4(resource, "/json") || !FUNC4(resource, "/json/list")) {
      return FUNC1(ws, is_head, true, host);
    } else if (!FUNC6(resource, "/devtools/", 10)) {
      return FUNC3(ws, is_head, resource,
          to_keep_alive);
    }
    // Chrome's devtools_http_handler_impl.cc also supports:
    //   /json/version*  -- version info
    //   /json/new*      -- open page
    //   /json/close/*   -- close page
    //   /thumb/*        -- get page thumbnail png
  }
  return FUNC2(ws, is_head, resource, NULL);
}