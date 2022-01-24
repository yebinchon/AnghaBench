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
typedef  int /*<<< orphan*/  errbuf2 ;
typedef  int /*<<< orphan*/  errbuf1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static jv FUNC7(jv bad1, jv bad2, const char* msg) {
  char errbuf1[15],errbuf2[15];
  jv err = FUNC4(FUNC6("%s (%s) and %s (%s) %s",
                                             FUNC5(FUNC3(bad1)),
                                             FUNC1(FUNC0(bad1), errbuf1, sizeof(errbuf1)),
                                             FUNC5(FUNC3(bad2)),
                                             FUNC1(FUNC0(bad2), errbuf2, sizeof(errbuf2)),
                                             msg));
  FUNC2(bad1);
  FUNC2(bad2);
  return err;
}