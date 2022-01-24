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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static mrb_value
FUNC2(mrb_state *mrb, mrb_value str, const char *p, int len) {
  const char *pend;
  char buf[5];

  pend = (const char *) p + len;
  for (;p < pend; p++) {
    unsigned char c, cc;

    c = *p;
    if (c == '/') {
      buf[0] = '\\'; buf[1] = c;
      FUNC1(mrb, str, buf, 2);
      continue;
    }
    if (FUNC0(c)) {
      buf[0] = c;
      FUNC1(mrb, str, buf, 1);
      continue;
    }
    switch (c) {
      case '\n': cc = 'n'; break;
      case '\r': cc = 'r'; break;
      case '\t': cc = 't'; break;
      default: cc = 0; break;
    }
    if (cc) {
      buf[0] = '\\';
      buf[1] = (char)cc;
      FUNC1(mrb, str, buf, 2);
      continue;
    }
    else {
      buf[0] = '\\';
      buf[3] = '0' + c % 8; c /= 8;
      buf[2] = '0' + c % 8; c /= 8;
      buf[1] = '0' + c % 8;
      FUNC1(mrb, str, buf, 4);
      continue;
    }
  }
  return str;
}