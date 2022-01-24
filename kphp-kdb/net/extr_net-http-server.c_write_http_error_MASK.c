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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 char* error_text_pattern ; 
 char* FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC4 (struct connection *c, int code) {
  if (code == 204) {
    FUNC2 (c, code, 0, -1, 0, 0);
    return 0;
  } else {
    static char buff[1024];
    char *ptr = buff;
    const char *error_message = FUNC0 (&code);
    ptr += FUNC1 (ptr, error_text_pattern, code, error_message, code, error_message);
    FUNC2 (c, code, 0, ptr - buff, 0, 0);
    return FUNC3 (&c->Out, buff, ptr - buff);
  }
}