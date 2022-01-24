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
struct stat {int st_size; } ;
struct injected_reply {int len; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(const char *filename, struct injected_reply *reply) {
    FILE *f;
    if ((f = FUNC3(filename, "r")) == NULL) {
        FUNC0(EXIT_FAILURE, "fopen(%s)", filename);
    }
    struct stat stbuf;
    if (FUNC5(FUNC2(f), &stbuf) != 0) {
        FUNC0(EXIT_FAILURE, "fstat(%s)", filename);
    }
    reply->len = stbuf.st_size;
    reply->buf = FUNC6(stbuf.st_size);
    int n = FUNC4(reply->buf, 1, stbuf.st_size, f);
    if (n != stbuf.st_size) {
        FUNC0(EXIT_FAILURE, "fread(%s)", filename);
    }
    FUNC1(f);
}