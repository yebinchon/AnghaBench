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
struct phr_chunked_decoder {int /*<<< orphan*/  member_0; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  dec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct phr_chunked_decoder*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct phr_chunked_decoder*,char*,size_t*) ; 
 char* FUNC5 (char const*) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(int line, const char *encoded, ssize_t expected)
{
    struct phr_chunked_decoder dec = {0};
    char *buf = FUNC5(encoded);
    size_t bufsz, i;
    ssize_t ret;

    FUNC2("testing failure at-once, source at line %d", line);
    bufsz = FUNC6(buf);
    ret = FUNC4(&dec, buf, &bufsz);
    FUNC3(ret == expected);

    FUNC2("testing failure per-byte, source at line %d", line);
    FUNC1(&dec, 0, sizeof(dec));
    for (i = 0; encoded[i] != '\0'; ++i) {
        buf[0] = encoded[i];
        bufsz = 1;
        ret = FUNC4(&dec, buf, &bufsz);
        if (ret == -1) {
            FUNC3(ret == expected);
            goto cleanup;
        } else if (ret == -2) {
            /* continue */
        } else {
            FUNC3(0);
            goto cleanup;
        }
    }
    FUNC3(ret == expected);

cleanup:
    FUNC0(buf);
}