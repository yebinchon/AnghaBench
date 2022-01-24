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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 size_t FUNC3 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char * FUNC9(const char * filename) {
    FILE *fp = FUNC2(filename, "r");
    size_t size_to_read = 0;
    size_t size_read = 0;
    long pos;
    char *file_contents;
    if (!fp) {
        return NULL;
    }
    FUNC4(fp, 0L, SEEK_END);
    pos = FUNC5(fp);
    if (pos < 0) {
        FUNC0(fp);
        return NULL;
    }
    size_to_read = pos;
    FUNC8(fp);
    file_contents = (char*)FUNC7(sizeof(char) * (size_to_read + 1));
    if (!file_contents) {
        FUNC0(fp);
        return NULL;
    }
    size_read = FUNC3(file_contents, 1, size_to_read, fp);
    if (size_read == 0 || FUNC1(fp)) {
        FUNC0(fp);
        FUNC6(file_contents);
        return NULL;
    }
    FUNC0(fp);
    file_contents[size_read] = '\0';
    return file_contents;
}