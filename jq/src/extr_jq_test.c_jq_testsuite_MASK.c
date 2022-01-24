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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int FUNC7(jv libdirs, int verbose, int argc, char* argv[]) {
  FILE *testdata = stdin;
  int skip = -1;
  int take = -1;
  FUNC3();
  if (argc > 0) {
    for(int i = 0; i < argc; i++) {
      if (!FUNC6(argv[i], "--skip")) {
        skip = FUNC0(argv[i+1]);
        i++;
      } else if (!FUNC6(argv[i], "--take")) {
        take = FUNC0(argv[i+1]);
        i++;
      } else {
        testdata = FUNC2(argv[i], "r");
        if (!testdata) {
          FUNC4("fopen");
          FUNC1(1);
        }
      }
    }
  }
  FUNC5(libdirs, verbose, testdata, skip, take);
  return 0;
}