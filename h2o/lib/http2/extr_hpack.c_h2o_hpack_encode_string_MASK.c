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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t SIZE_MAX ; 
 size_t FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (char*,char const*,size_t) ; 
 char* FUNC4 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

size_t FUNC7(uint8_t *dst, const char *s, size_t len)
{
    if (FUNC0(len != 0)) {
        /* try to encode using huffman */
        size_t hufflen = FUNC3(dst + 1, (const uint8_t *)s, len);
        if (FUNC0(hufflen != SIZE_MAX)) {
            size_t head_len;
            if (FUNC0(FUNC2((uint32_t)hufflen, 7))) {
                dst[0] = (uint8_t)(0x80 | hufflen);
                head_len = 1;
            } else {
                uint8_t head[8];
                head[0] = '\x80';
                head_len = FUNC4(head, hufflen, 7) - head;
                FUNC6(dst + head_len, dst + 1, hufflen);
                FUNC5(dst, head, head_len);
            }
            return head_len + hufflen;
        }
    }
    return FUNC1(dst, s, len);
}