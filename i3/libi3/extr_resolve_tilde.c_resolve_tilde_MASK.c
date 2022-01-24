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
struct TYPE_4__ {int gl_pathc; char** gl_pathv; } ;
typedef  TYPE_1__ glob_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int GLOB_NOMATCH ; 
 int /*<<< orphan*/  GLOB_TILDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (size_t,int) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 size_t FUNC10 (char const*) ; 

char *FUNC11(const char *path) {
    static glob_t globbuf;
    char *head, *tail, *result;

    tail = FUNC8(path, '/');
    head = FUNC6(path, tail ? (size_t)(tail - path) : FUNC10(path));

    int res = FUNC2(head, GLOB_TILDE, NULL, &globbuf);
    FUNC1(head);
    /* no match, or many wildcard matches are bad */
    if (res == GLOB_NOMATCH || globbuf.gl_pathc != 1)
        result = FUNC5(path);
    else if (res != 0) {
        FUNC0(EXIT_FAILURE, "glob() failed");
    } else {
        head = globbuf.gl_pathv[0];
        result = FUNC4(FUNC10(head) + (tail ? FUNC10(tail) : 0) + 1, 1);
        FUNC9(result, head);
        if (tail) {
            FUNC7(result, tail);
        }
    }
    FUNC3(&globbuf);

    return result;
}