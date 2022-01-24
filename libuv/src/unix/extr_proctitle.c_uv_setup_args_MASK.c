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
struct TYPE_2__ {char* str; int len; } ;

/* Variables and functions */
 char** args_mem ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 TYPE_1__ process_title ; 
 int FUNC2 (char*) ; 
 char** FUNC3 (size_t) ; 

char** FUNC4(int argc, char** argv) {
  char** new_argv;
  size_t size;
  char* s;
  int i;

  if (argc <= 0)
    return argv;

  /* Calculate how much memory we need for the argv strings. */
  size = 0;
  for (i = 0; i < argc; i++)
    size += FUNC2(argv[i]) + 1;

#if defined(__MVS__)
  /* argv is not adjacent. So just use argv[0] */
  process_title.str = argv[0];
  process_title.len = strlen(argv[0]);
#else
  process_title.str = argv[0];
  process_title.len = argv[argc - 1] + FUNC2(argv[argc - 1]) - argv[0];
  FUNC0(process_title.len + 1 == size);  /* argv memory should be adjacent. */
#endif

  /* Add space for the argv pointers. */
  size += (argc + 1) * sizeof(char*);

  new_argv = FUNC3(size);
  if (new_argv == NULL)
    return argv;
  args_mem = new_argv;

  /* Copy over the strings and set up the pointer table. */
  s = (char*) &new_argv[argc + 1];
  for (i = 0; i < argc; i++) {
    size = FUNC2(argv[i]) + 1;
    FUNC1(s, argv[i], size);
    new_argv[i] = s;
    s += size;
  }
  new_argv[i] = NULL;

  return new_argv;
}