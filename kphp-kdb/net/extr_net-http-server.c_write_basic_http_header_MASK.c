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
struct hts_data {scalar_t__ http_ver; int query_flags; } ;
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int B_SZ ; 
 struct hts_data* FUNC0 (struct connection*) ; 
 scalar_t__ HTTP_V10 ; 
 int QF_KEEPALIVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* header_pattern ; 
 char* FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,char const*,char*,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC8 (struct connection *c, int code, int date, int len, const char *add_header, const char *content_type) {
  struct hts_data *D = FUNC0(c);

  if (D->http_ver >= HTTP_V10) {
#define B_SZ	2048
    static char buff[B_SZ], date_buff[32];
    char *ptr = buff;
    const char *error_message = FUNC4 (&code);
    if (date) {
      FUNC3 (date_buff, date);
    }
    ptr += FUNC5 (ptr, B_SZ - 64, header_pattern, code, error_message,
		    date ? date_buff : FUNC2(), content_type ? content_type : "text/html", (D->query_flags & QF_KEEPALIVE) ? "keep-alive" : "close", add_header ? add_header : "");
    FUNC1 (ptr < buff + B_SZ - 64);
    if (len >= 0) {
      ptr += FUNC6 (ptr, "Content-Length: %d\r\n", len);
    }

    ptr += FUNC6 (ptr, "\r\n");

    return FUNC7 (&c->Out, buff, ptr - buff);
  }

  return 0;
}