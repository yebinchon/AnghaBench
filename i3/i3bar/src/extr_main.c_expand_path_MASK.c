#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ gl_pathc; char** gl_pathv; } ;
typedef  TYPE_1__ glob_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int GLOB_NOCHECK ; 
 int GLOB_TILDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(char *path) {
    static glob_t globbuf;
    if (FUNC2(path, GLOB_NOCHECK | GLOB_TILDE, NULL, &globbuf) < 0) {
        FUNC0("glob() failed\n");
        FUNC1(EXIT_FAILURE);
    }
    char *result = FUNC4(globbuf.gl_pathc > 0 ? globbuf.gl_pathv[0] : path);
    FUNC3(&globbuf);
    return result;
}