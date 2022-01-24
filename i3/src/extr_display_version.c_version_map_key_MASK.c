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
 int human_readable_key ; 
 int loaded_config_file_name_key ; 
 size_t FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*,size_t) ; 

__attribute__((used)) static int FUNC2(void *ctx, const unsigned char *stringval, size_t stringlen) {
    human_readable_key = (stringlen == FUNC0("human_readable") &&
                          FUNC1((const char *)stringval, "human_readable", FUNC0("human_readable")) == 0);
    loaded_config_file_name_key = (stringlen == FUNC0("loaded_config_file_name") &&
                                   FUNC1((const char *)stringval, "loaded_config_file_name", FUNC0("loaded_config_file_name")) == 0);
    return 1;
}