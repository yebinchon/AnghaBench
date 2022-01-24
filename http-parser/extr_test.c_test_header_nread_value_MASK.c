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
struct TYPE_4__ {size_t nread; } ;
typedef  TYPE_1__ http_parser ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  settings_null ; 
 size_t FUNC3 (char const*) ; 

void
FUNC4 ()
{
  http_parser parser;
  FUNC2(&parser, HTTP_REQUEST);
  size_t parsed;
  const char *buf;
  buf = "GET / HTTP/1.1\r\nheader: value\nhdr: value\r\n";
  parsed = FUNC1(&parser, &settings_null, buf, FUNC3(buf));
  FUNC0(parsed == FUNC3(buf));

  FUNC0(parser.nread == FUNC3(buf));
}