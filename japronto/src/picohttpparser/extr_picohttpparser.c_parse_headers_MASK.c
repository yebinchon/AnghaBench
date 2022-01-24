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
struct phr_header {char const* name; int name_len; int /*<<< orphan*/  value_len; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  ranges1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 char* FUNC2 (char const*,char const*,char const*,int,int*) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * token_char_map ; 

__attribute__((used)) static const char *FUNC4(const char *buf, const char *buf_end, struct phr_header *headers, size_t *num_headers,
                                 size_t max_headers, int *ret)
{
    for (;; ++*num_headers) {
        FUNC0();
        if (*buf == '\015') {
            ++buf;
            FUNC1('\012');
            break;
        } else if (*buf == '\012') {
            ++buf;
            break;
        }
        if (*num_headers == max_headers) {
            *ret = -1;
            return NULL;
        }
        if (!(*num_headers != 0 && (*buf == ' ' || *buf == '\t'))) {
            /* parsing name, but do not discard SP before colon, see
             * http://www.mozilla.org/security/announce/2006/mfsa2006-33.html */
            headers[*num_headers].name = buf;
            static const char ranges1[] __attribute__((aligned(16))) = "\x00 "  /* control chars and up to SP */
                                                                       "\"\""   /* 0x22 */
                                                                       "()"     /* 0x28,0x29 */
                                                                       ",,"     /* 0x2c */
                                                                       "//"     /* 0x2f */
                                                                       ":@"     /* 0x3a-0x40 */
                                                                       "[]"     /* 0x5b-0x5d */
                                                                       "{\377"; /* 0x7b-0xff */
            int found;
            buf = FUNC2(buf, buf_end, ranges1, sizeof(ranges1) - 1, &found);
            if (!found) {
                FUNC0();
            }
            while (1) {
                if (*buf == ':') {
                    break;
                } else if (!token_char_map[(unsigned char)*buf]) {
                    *ret = -1;
                    return NULL;
                }
                ++buf;
                FUNC0();
            }
            if ((headers[*num_headers].name_len = buf - headers[*num_headers].name) == 0) {
                *ret = -1;
                return NULL;
            }
            ++buf;
            for (;; ++buf) {
                FUNC0();
                if (!(*buf == ' ' || *buf == '\t')) {
                    break;
                }
            }
        } else {
            headers[*num_headers].name = NULL;
            headers[*num_headers].name_len = 0;
        }
        if ((buf = FUNC3(buf, buf_end, &headers[*num_headers].value, &headers[*num_headers].value_len, ret)) == NULL) {
            return NULL;
        }
    }
    return buf;
}