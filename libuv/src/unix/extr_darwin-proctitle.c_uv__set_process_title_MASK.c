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
typedef  int /*<<< orphan*/  namebuf ;
typedef  int /*<<< orphan*/  CFTypeRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/ * core_foundation_handle ; 
 int /*<<< orphan*/ * display_name_key ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 

void FUNC9(const char* title) {
  char namebuf[64 /* MAXTHREADNAMESIZE */];

#if !TARGET_OS_IPHONE
  if (core_foundation_handle != NULL) {
    CFTypeRef asn;
    FUNC6(0, NULL);
    FUNC3(/* Magic value */ -2,
                          FUNC1(FUNC2()));
    asn = FUNC4();
    FUNC5(/* Magic value */ -2, asn,
                                     *display_name_key, FUNC0(title), NULL);
  }
#endif  /* !TARGET_OS_IPHONE */

  FUNC8(namebuf, title, sizeof(namebuf));
  FUNC7(namebuf);
}