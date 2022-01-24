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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(FILE *fp, const char *buf, size_t len)
{
    size_t i, j;

    for (i = 0; i < len; i += 16) {
        FUNC0(fp, "%08zx", i);
        for (j = 0; j != 16; ++j) {
            if (i + j < len)
                FUNC0(fp, " %02x", (int)(unsigned char)buf[i + j]);
            else
                FUNC0(fp, "   ");
        }
        FUNC0(fp, " ");
        for (j = 0; j != 16 && i + j < len; ++j) {
            int ch = buf[i + j];
            FUNC1(' ' <= ch && ch < 0x7f ? ch : '.', fp);
        }
        FUNC0(fp, "\n");
    }
}