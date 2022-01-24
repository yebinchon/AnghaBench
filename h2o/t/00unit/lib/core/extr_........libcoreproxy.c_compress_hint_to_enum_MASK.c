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

/* Variables and functions */
 char H2O_COMPRESS_HINT_AUTO ; 
 char H2O_COMPRESS_HINT_DISABLE ; 
 char H2O_COMPRESS_HINT_ENABLE ; 
 char H2O_COMPRESS_HINT_ENABLE_BR ; 
 char H2O_COMPRESS_HINT_ENABLE_GZIP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char FUNC2(const char *val, size_t len)
{
    if (FUNC1(val, len, FUNC0("on"))) {
        return H2O_COMPRESS_HINT_ENABLE;
    }
    if (FUNC1(val, len, FUNC0("off"))) {
        return H2O_COMPRESS_HINT_DISABLE;
    }
    if (FUNC1(val, len, FUNC0("gzip"))) {
        return H2O_COMPRESS_HINT_ENABLE_GZIP;
    }
    if (FUNC1(val, len, FUNC0("br"))) {
        return H2O_COMPRESS_HINT_ENABLE_BR;
    }
    return H2O_COMPRESS_HINT_AUTO;
}