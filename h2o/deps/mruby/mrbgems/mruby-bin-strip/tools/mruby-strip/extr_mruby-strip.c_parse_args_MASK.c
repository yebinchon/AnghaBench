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
struct strip_args {int argc_start; int argc; char** argv; void* lvar; } ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t const) ; 

__attribute__((used)) static int
FUNC2(int argc, char **argv, struct strip_args *args)
{
  int i;

  args->argc_start = 0;
  args->argc = argc;
  args->argv = argv;
  args->lvar = FALSE;

  for (i = 1; i < argc; ++i) {
    const size_t len = FUNC0(argv[i]);
    if (len >= 2 && argv[i][0] == '-') {
      switch (argv[i][1]) {
      case 'l':
        args->lvar = TRUE;
        break;
      case '-':
        if (FUNC1((*argv) + 2, "lvar", len) == 0) {
          args->lvar = TRUE;
          break;
        }
      default:
        return -1;
      }
    }
    else {
      break;
    }
  }

  args->argc_start = i;
  return i;
}