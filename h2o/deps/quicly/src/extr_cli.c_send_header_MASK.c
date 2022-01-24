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
typedef  int /*<<< orphan*/  quicly_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,char const*) ; 

__attribute__((used)) static void FUNC2(quicly_stream_t *stream, int is_http1, int status, const char *mime_type)
{
    char buf[256];

    if (!is_http1)
        return;

    FUNC1(buf, "HTTP/1.1 %03d OK\r\nConnection: close\r\nContent-Type: %s\r\n\r\n", status, mime_type);
    FUNC0(stream, buf);
}