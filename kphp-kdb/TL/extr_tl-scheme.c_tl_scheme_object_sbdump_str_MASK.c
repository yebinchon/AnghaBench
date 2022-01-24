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
struct tl_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  expand_utf8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (struct tl_buffer*,char const) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_buffer*,char*,int) ; 
 int verbosity ; 

__attribute__((used)) static void FUNC4 (struct tl_buffer *b, const char *z) {
  const char *s;
  if (verbosity >= 4) {
    FUNC0 (stderr, "tl_scheme_object_bdump_str:");
    for (s = z; *s; s++) {
      FUNC0 (stderr, " %02x", (int) (unsigned char) *s);
    }
    FUNC0 (stderr, "\n");
    for (s = z; *s; s++) {
      FUNC0 (stderr, "  %c",  *s);
    }
    FUNC0 (stderr, "\n");
  }
  FUNC2 (b, '"');
  for (s = z; *s; s++) {
    switch (*s) {
      case '\n':
        FUNC2 (b, '\\');
        FUNC2 (b, 'n');
      break;
      case '\r':
        FUNC2 (b, '\\');
        FUNC2 (b, 'r');
      break;
      case '\t':
        FUNC2 (b, '\\');
        FUNC2 (b, 't');
      break;
      case '\\':
        FUNC2 (b, '\\');
        FUNC2 (b, '\\');
      break;
      case '"':
        FUNC2 (b, '\\');
        FUNC2 (b, '"');
      break;
      default:
        if (FUNC1 (*s) || !expand_utf8) {
          FUNC2 (b, *s);
        } else {
          FUNC3 (b, "\\x%02x", (int) (unsigned char) *s);
        }
      break;
    }
  }
  FUNC2 (b, '"');
}