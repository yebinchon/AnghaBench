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
typedef  int /*<<< orphan*/  http_parser ;

/* Variables and functions */
 scalar_t__ HPE_UNEXPECTED_CONTENT_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HTTP_REQUEST ; 
 int /*<<< orphan*/  HTTP_RESPONSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  settings_null ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC6 (char const*) ; 

void
FUNC7 (int req)
{
  http_parser parser;
  FUNC5(&parser, req ? HTTP_REQUEST : HTTP_RESPONSE);
  size_t parsed;
  const char *buf;
  buf = req ?
    "GET / HTTP/1.1\r\n" :
    "HTTP/1.1 200 OK\r\n";
  parsed = FUNC4(&parser, &settings_null, buf, FUNC6(buf));
  FUNC2(parsed == FUNC6(buf));

  buf = "Transfer-Encoding: chunked\r\nContent-Length: 1\r\n\r\n";
  size_t buflen = FUNC6(buf);

  parsed = FUNC4(&parser, &settings_null, buf, buflen);
  if (parsed != buflen) {
    FUNC2(FUNC0(&parser) == HPE_UNEXPECTED_CONTENT_LENGTH);
    return;
  }

  FUNC3(stderr,
          "\n*** Error expected but none in chunked content-length test ***\n");
  FUNC1();
}