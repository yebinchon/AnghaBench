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
struct phr_chunked_decoder {int consume_trailer; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int FUNC0 (char*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct phr_chunked_decoder*,char*,size_t*) ; 
 char* FUNC5 (char const*) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(int line, int consume_trailer, const char *encoded, const char *decoded, ssize_t expected)
{
    struct phr_chunked_decoder dec = {0};
    char *buf;
    size_t bufsz;
    ssize_t ret;

    dec.consume_trailer = consume_trailer;

    FUNC2("testing at-once, source at line %d", line);

    buf = FUNC5(encoded);
    bufsz = FUNC6(buf);

    ret = FUNC4(&dec, buf, &bufsz);

    FUNC3(ret == expected);
    FUNC3(bufsz == FUNC6(decoded));
    FUNC3(FUNC0(buf, bufsz, decoded));
    if (expected >= 0) {
        if (ret == expected)
            FUNC3(FUNC0(buf + bufsz, ret, encoded + FUNC6(encoded) - ret));
        else
            FUNC3(0);
    }

    FUNC1(buf);
}