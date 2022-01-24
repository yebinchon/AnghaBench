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
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,...) ; 

__attribute__((used)) static void FUNC10(jv str, int ascii_only, FILE* F, jv* S, int T) {
  FUNC0(FUNC2(str) == JV_KIND_STRING);
  const char* i = FUNC4(str);
  const char* end = i + FUNC3(FUNC1(str));
  const char* cstart;
  int c = 0;
  char buf[32];
  FUNC7('"', F, S, T);
  while ((i = FUNC5((cstart = i), end, &c))) {
    FUNC0(c != -1);
    int unicode_escape = 0;
    if (0x20 <= c && c <= 0x7E) {
      // printable ASCII
      if (c == '"' || c == '\\') {
        FUNC7('\\', F, S, T);
      }
      FUNC7(c, F, S, T);
    } else if (c < 0x20 || c == 0x7F) {
      // ASCII control character
      switch (c) {
      case '\b':
        FUNC7('\\', F, S, T);
        FUNC7('b', F, S, T);
        break;
      case '\t':
        FUNC7('\\', F, S, T);
        FUNC7('t', F, S, T);
        break;
      case '\r':
        FUNC7('\\', F, S, T);
        FUNC7('r', F, S, T);
        break;
      case '\n':
        FUNC7('\\', F, S, T);
        FUNC7('n', F, S, T);
        break;
      case '\f':
        FUNC7('\\', F, S, T);
        FUNC7('f', F, S, T);
        break;
      default:
        unicode_escape = 1;
        break;
      }
    } else {
      if (ascii_only) {
        unicode_escape = 1;
      } else {
        FUNC6(cstart, i - cstart, F, S, T);
      }
    }
    if (unicode_escape) {
      if (c <= 0xffff) {
        FUNC9(buf, sizeof(buf), "\\u%04x", c);
      } else {
        c -= 0x10000;
        FUNC9(buf, sizeof(buf), "\\u%04x\\u%04x",
                0xD800 | ((c & 0xffc00) >> 10),
                0xDC00 | (c & 0x003ff));
      }
      FUNC8(buf, F, S, T);
    }
  }
  FUNC0(c != -1);
  FUNC7('"', F, S, T);
}