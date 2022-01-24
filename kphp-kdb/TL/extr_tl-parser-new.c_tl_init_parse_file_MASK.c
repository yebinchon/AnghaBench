#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  type; scalar_t__ len; int /*<<< orphan*/  ptr; } ;
struct parse {long long len; TYPE_1__ lex; int /*<<< orphan*/  text; scalar_t__ line_pos; scalar_t__ line; scalar_t__ pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  lex_none ; 
 long long FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 long long FUNC4 (int,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (long long) ; 

struct parse *FUNC6 (const char *fname) {
  int fd = FUNC3 (fname, O_RDONLY);
  if (fd < 0) {
    FUNC1 (stderr, "Error %m\n");
    FUNC0 (0);
    return 0;
  }
  long long size = FUNC2 (fd, 0, SEEK_END);
  if (size <= 0) {
    FUNC1 (stderr, "size is %lld. Too small.\n", size);
    return 0;
  }
  static struct parse save;
  save.text = FUNC5 (size);
  FUNC2 (fd, 0, SEEK_SET);
  save.len = FUNC4 (fd, save.text, size);
  FUNC0 (save.len == size);
  save.pos = 0;
  save.line = 0;
  save.line_pos = 0;
  save.lex.ptr = save.text;
  save.lex.len = 0;
  save.lex.type = lex_none;
  return &save;
}