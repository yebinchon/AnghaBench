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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int SDS_LLSTR_SIZE ; 
 int FUNC0 (char*,long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

sds FUNC2(long long value) {
    char buf[SDS_LLSTR_SIZE];
    int len = FUNC0(buf,value);

    return FUNC1(buf,len);
}