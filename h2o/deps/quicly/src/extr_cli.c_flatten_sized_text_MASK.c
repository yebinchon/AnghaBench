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
typedef  int /*<<< orphan*/  quicly_sendbuf_vec_t ;
typedef  int /*<<< orphan*/  pattern ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(quicly_sendbuf_vec_t *vec, void *dst, size_t off, size_t len)
{
    static const char pattern[] =
        "hello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello world\nhello "
        "world\nhello world\nhello world\nhello world\nhello world\nhello world\n";

    const char *src = pattern + off % 12;
    FUNC0(src + len - pattern <= sizeof(pattern) - 1); /* pattern is bigger than MTU size */
    FUNC1(dst, src, len);
    return 0;

#undef PATTERN
}