#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int fd; } ;
typedef  TYPE_1__ ev_io ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int STDIN_CHUNK_SIZE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned char*,int) ; 
 unsigned char* FUNC4 (int) ; 
 unsigned char* FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static unsigned char *FUNC7(ev_io *watcher, int *ret_buffer_len) {
    int fd = watcher->fd;
    int n = 0;
    int rec = 0;
    int buffer_len = STDIN_CHUNK_SIZE;
    unsigned char *buffer = FUNC4(buffer_len + 1);
    buffer[0] = '\0';
    while (1) {
        n = FUNC3(fd, buffer + rec, buffer_len - rec);
        if (n == -1) {
            if (errno == EAGAIN) {
                /* finish up */
                break;
            }
            FUNC0("read() failed!: %s\n", FUNC6(errno));
            FUNC1(buffer);
            FUNC2(EXIT_FAILURE);
        }
        if (n == 0) {
            FUNC0("stdin: received EOF\n");
            FUNC1(buffer);
            *ret_buffer_len = -1;
            return NULL;
        }
        rec += n;

        if (rec == buffer_len) {
            buffer_len += STDIN_CHUNK_SIZE;
            buffer = FUNC5(buffer, buffer_len);
        }
    }
    if (*buffer == '\0') {
        FUNC1(buffer);
        rec = -1;
    }
    *ret_buffer_len = rec;
    return buffer;
}