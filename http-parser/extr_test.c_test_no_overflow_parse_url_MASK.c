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
struct http_parser_url {int port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ,struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC3 (struct http_parser_url*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4 (void)
{
  int rv;
  struct http_parser_url u;

  FUNC3(&u);
  rv = FUNC2("http://example.com:8001", 22, 0, &u);

  if (rv != 0) {
    FUNC1(stderr,
            "\n*** test_no_overflow_parse_url invalid return value=%d\n",
            rv);
    FUNC0();
  }

  if (u.port != 800) {
    FUNC1(stderr,
            "\n*** test_no_overflow_parse_url invalid port number=%d\n",
            u.port);
    FUNC0();
  }
}