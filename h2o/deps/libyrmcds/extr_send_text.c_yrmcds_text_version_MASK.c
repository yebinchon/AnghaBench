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
typedef  int /*<<< orphan*/  yrmcds_error ;
typedef  int /*<<< orphan*/  yrmcds ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  textbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

yrmcds_error FUNC3(yrmcds* c, uint32_t* serial) {
    textbuf_t buf[1];
    FUNC2(buf);
    FUNC1(buf, "version");
    return FUNC0(c, buf, serial);
}