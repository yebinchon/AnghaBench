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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct phr_chunked_decoder*,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 size_t FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(int line, int consume_trailer, const char *encoded, const char *decoded, ssize_t expected)
{
    struct phr_chunked_decoder dec = {0};
    char *buf = FUNC2(FUNC7(encoded) + 1);
    size_t bytes_to_consume = FUNC7(encoded) - (expected >= 0 ? expected : 0), bytes_ready = 0, bufsz, i;
    ssize_t ret;

    dec.consume_trailer = consume_trailer;

    FUNC3("testing per-byte, source at line %d", line);

    for (i = 0; i < bytes_to_consume - 1; ++i) {
        buf[bytes_ready] = encoded[i];
        bufsz = 1;
        ret = FUNC5(&dec, buf + bytes_ready, &bufsz);
        if (ret != -2) {
            FUNC4(0);
            goto cleanup;
        }
        bytes_ready += bufsz;
    }
    FUNC6(buf + bytes_ready, encoded + bytes_to_consume - 1);
    bufsz = FUNC7(buf + bytes_ready);
    ret = FUNC5(&dec, buf + bytes_ready, &bufsz);
    FUNC4(ret == expected);
    bytes_ready += bufsz;
    FUNC4(bytes_ready == FUNC7(decoded));
    FUNC4(FUNC0(buf, bytes_ready, decoded));
    if (expected >= 0) {
        if (ret == expected)
            FUNC4(FUNC0(buf + bytes_ready, expected, encoded + bytes_to_consume));
        else
            FUNC4(0);
    }

cleanup:
    FUNC1(buf);
}