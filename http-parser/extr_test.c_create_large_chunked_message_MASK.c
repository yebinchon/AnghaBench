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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char const*) ; 

char *
FUNC6 (int body_size_in_kb, const char* headers)
{
  int i;
  size_t wrote = 0;
  size_t headers_len = FUNC5(headers);
  size_t bufsize = headers_len + (5+1024+2)*body_size_in_kb + 6;
  char * buf = FUNC1(bufsize);

  FUNC2(buf, headers, headers_len);
  wrote += headers_len;

  for (i = 0; i < body_size_in_kb; i++) {
    // write 1kb chunk into the body.
    FUNC2(buf + wrote, "400\r\n", 5);
    wrote += 5;
    FUNC3(buf + wrote, 'C', 1024);
    wrote += 1024;
    FUNC4(buf + wrote, "\r\n");
    wrote += 2;
  }

  FUNC2(buf + wrote, "0\r\n\r\n", 6);
  wrote += 6;
  FUNC0(wrote == bufsize);

  return buf;
}