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
typedef  char uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_3__ {char* base; } ;
typedef  TYPE_1__ uv_buf_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int UV_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int) ; 

void FUNC6(uv_stream_t *client, ssize_t nread, const uv_buf_t *buf) {
    if (nread < 0) {
        if (nread != UV_EOF)
            FUNC0(stderr, "Read error %s\n", FUNC5(nread));
        FUNC4((uv_handle_t*) client, NULL);
        FUNC1(buf->base);
        FUNC1(client);
        return;
    }

    char *data = (char*) FUNC2(sizeof(char) * (nread+1));
    data[nread] = '\0';
    FUNC3(data, buf->base, nread);

    FUNC0(stderr, "%s", data);
    FUNC1(data);
    FUNC1(buf->base);
}