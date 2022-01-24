#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  sendstate; int /*<<< orphan*/  recvstate; } ;
typedef  TYPE_1__ quicly_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int,char*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(quicly_stream_t *stream, size_t off, const void *src, size_t len)
{
    char *path;
    int is_http1;
    int ret;

    if ((ret = FUNC7(stream, off, src, len)) != 0)
        return ret;

    if (!FUNC1(FUNC6(stream), &path, &is_http1)) {
        if (!FUNC2(&stream->recvstate))
            return 0;
        /* failed to parse request */
        FUNC10(stream, 1, 500, "text/plain; charset=utf-8");
        FUNC12(stream, "failed to parse HTTP request\n");
        goto Sent;
    }
    if (!FUNC2(&stream->recvstate))
        FUNC3(stream, FUNC0(0));

    if (FUNC13(path, "/logo.jpg") == 0 && FUNC9(stream, is_http1, "assets/logo.jpg", "image/jpeg"))
        goto Sent;
    if (FUNC13(path, "/main.jpg") == 0 && FUNC9(stream, is_http1, "assets/main.jpg", "image/jpeg"))
        goto Sent;
    if (FUNC11(stream, path, is_http1))
        goto Sent;
    if (FUNC14(path) && FUNC9(stream, is_http1, path + 1, "text/plain"))
        goto Sent;

    if (!FUNC4(&stream->sendstate))
        return 0;

    FUNC10(stream, is_http1, 404, "text/plain; charset=utf-8");
    FUNC12(stream, "not found\n");
Sent:
    FUNC5(stream);
    FUNC8(stream, len);
    return 0;
}