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
typedef  scalar_t__ uc_err ;

/* Variables and functions */
 scalar_t__ UC_ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 char* FUNC2 (scalar_t__) ; 

void FUNC3(uc_err res, const char *msg) {
    if (res != UC_ERR_OK) {
        FUNC1("%s: %s\r\n", msg, FUNC2(res));
        FUNC0(1);
    }
}