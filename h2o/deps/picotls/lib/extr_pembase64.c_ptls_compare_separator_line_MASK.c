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
 size_t FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC2(const char *line, const char *begin_or_end, const char *label)
{
    int ret = FUNC1(line, "-----", 5);
    size_t text_index = 5;

    if (ret == 0) {
        size_t begin_or_end_length = FUNC0(begin_or_end);
        ret = FUNC1(line + text_index, begin_or_end, begin_or_end_length);
        text_index += begin_or_end_length;
    }

    if (ret == 0) {
        ret = line[text_index] - ' ';
        text_index++;
    }

    if (ret == 0) {
        size_t label_length = FUNC0(label);
        ret = FUNC1(line + text_index, label, label_length);
        text_index += label_length;
    }

    if (ret == 0) {
        ret = FUNC1(line + text_index, "-----", 5);
    }

    return ret;
}