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
typedef  scalar_t__ JSON_Status ;

/* Variables and functions */
 scalar_t__ JSONSuccess ; 
 char* FUNC0 (char const*,size_t) ; 
 scalar_t__ FUNC1 (char const**) ; 

__attribute__((used)) static char * FUNC2(const char **string) {
    const char *string_start = *string;
    size_t string_len = 0;
    JSON_Status status = FUNC1(string);
    if (status != JSONSuccess) {
        return NULL;
    }
    string_len = *string - string_start - 2; /* length without quotes */
    return FUNC0(string_start + 1, string_len);
}