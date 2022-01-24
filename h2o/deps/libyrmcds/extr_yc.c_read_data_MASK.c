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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 scalar_t__ FUNC5 (char*,size_t) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static size_t FUNC7(const char* filename, char** pdata) {
    int fd;
    if( FUNC6(filename, "-") == 0 ) {
        fd = STDIN_FILENO;
    } else {
        fd = FUNC3(filename, O_RDONLY);
        if( fd == -1 ) return 0;
    }

    size_t data_len = 0;
    size_t capacity = 1 << 20;
    *pdata = (char*)FUNC2(capacity);
    if( *pdata == NULL ) return 0;
    while( 1 ) {
        if( (capacity - data_len) < (1 << 20) ) {
            char* new_data = (char*)FUNC5(*pdata, capacity * 2);
            if( new_data == NULL ) {
                FUNC1(*pdata);
                *pdata = NULL;
                return 0;
            }
            *pdata = new_data;
            capacity *= 2;
        }
        ssize_t n = FUNC4(fd, *pdata + data_len, 1 << 20);
        if( n == -1 ) {
            FUNC1(*pdata);
            *pdata = NULL;
            return 0;
        }
        if( n == 0 ) break;
        data_len += (size_t)n;
    }

    if( fd != STDIN_FILENO )
        FUNC0(fd);
    return data_len;
}