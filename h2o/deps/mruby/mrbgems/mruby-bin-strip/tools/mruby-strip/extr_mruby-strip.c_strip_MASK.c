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
struct strip_args {int argc_start; int argc; char** argv; scalar_t__ lvar; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int MRB_DUMP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC7(mrb_state *mrb, struct strip_args *args)
{
  int i;

  for (i = args->argc_start; i < args->argc; ++i) {
    char *filename;
    FILE *rfile;
    mrb_irep *irep;
    FILE *wfile;
    int dump_result;

    filename = args->argv[i];
    rfile = FUNC1(filename, "rb");
    if (rfile == NULL) {
      FUNC2(stderr, "can't open file for reading %s\n", filename);
      return EXIT_FAILURE;
    }

    irep = FUNC6(mrb, rfile);
    FUNC0(rfile);
    if (irep == NULL) {
      FUNC2(stderr, "can't read irep file %s\n", filename);
      return EXIT_FAILURE;
    }

    /* clear lv if --lvar is enabled */
    if (args->lvar) {
      FUNC5(mrb, irep);
    }

    wfile = FUNC1(filename, "wb");
    if (wfile == NULL) {
      FUNC2(stderr, "can't open file for writing %s\n", filename);
      FUNC4(mrb, irep);
      return EXIT_FAILURE;
    }

    /* debug flag must always be false */
    dump_result = FUNC3(mrb, irep, FALSE, wfile);

    FUNC0(wfile);
    FUNC4(mrb, irep);

    if (dump_result != MRB_DUMP_OK) {
      FUNC2(stderr, "error occurred during dumping %s\n", filename);
      return EXIT_FAILURE;
    }
  }
  return EXIT_SUCCESS;
}