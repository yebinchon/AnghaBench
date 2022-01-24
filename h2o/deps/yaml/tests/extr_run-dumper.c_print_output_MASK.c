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
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC8(char *name, unsigned char *buffer, size_t size, int count)
{
    FILE *file;
    char data[BUFFER_SIZE];
    size_t data_size = 1;
    size_t total_size = 0;
    if (count >= 0) {
        FUNC7("FAILED (at the document #%d)\nSOURCE:\n", count+1);
    }
    file = FUNC4(name, "rb");
    FUNC0(*file);
    while (data_size > 0) {
        data_size = FUNC5(data, 1, BUFFER_SIZE, file);
        FUNC0(!FUNC3(file));
        if (!data_size) break;
        FUNC0(FUNC6(data, 1, data_size, stdout) == data_size);
        total_size += data_size;
        if (FUNC2(file)) break;
    }
    FUNC1(file);
    FUNC7("#### (length: %d)\n", total_size);
    FUNC7("OUTPUT:\n%s#### (length: %d)\n", buffer, size);
    return 0;
}