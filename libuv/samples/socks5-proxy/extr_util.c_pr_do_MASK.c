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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  fmtbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(FILE *stream,
                  const char *label,
                  const char *fmt,
                  va_list ap) {
  char fmtbuf[1024];
  FUNC2(fmtbuf, sizeof(fmtbuf), fmt, ap);
  FUNC1(stream, "%s:%s: %s\n", FUNC0(), label, fmtbuf);
}