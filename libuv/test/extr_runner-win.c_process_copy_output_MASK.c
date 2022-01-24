#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ stdio_out; } ;
typedef  TYPE_1__ process_info_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int _O_RDONLY ; 
 int _O_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int FUNC2 (intptr_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(process_info_t* p, FILE* stream) {
  char buf[1024];
  int fd, r;
  FILE* f;

  fd = FUNC2((intptr_t)p->stdio_out, _O_RDONLY | _O_TEXT);
  if (fd == -1)
    return -1;
  f = FUNC1(fd, "rt");
  if (f == NULL) {
    FUNC0(fd);
    return -1;
  }

  r = FUNC6(f, 0, SEEK_SET);
  if (r < 0)
    return -1;

  while (FUNC5(buf, sizeof(buf), f) != NULL)
    FUNC7(buf, FUNC8(buf), stream);

  if (FUNC4(f))
    return -1;

  FUNC3(f);
  return 0;
}