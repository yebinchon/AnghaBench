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
 scalar_t__ FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char*,char const*) ; 

__attribute__((used)) static void FUNC3(char *string, const char *start_token, const char *end_token) {
    int in_string = 0, escaped = 0;
    size_t i;
    char *ptr = NULL, current_char;
    size_t start_token_len = FUNC0(start_token);
    size_t end_token_len = FUNC0(end_token);
    if (start_token_len == 0 || end_token_len == 0) {
        return;
    }
    while ((current_char = *string) != '\0') {
        if (current_char == '\\' && !escaped) {
            escaped = 1;
            string++;
            continue;
        } else if (current_char == '\"' && !escaped) {
            in_string = !in_string;
        } else if (!in_string && FUNC1(string, start_token, start_token_len) == 0) {
            for(i = 0; i < start_token_len; i++) {
                string[i] = ' ';
            }
            string = string + start_token_len;
            ptr = FUNC2(string, end_token);
            if (!ptr) {
                return;
            }
            for (i = 0; i < (ptr - string) + end_token_len; i++) {
                string[i] = ' ';
            }
            string = ptr + end_token_len - 1;
        }
        escaped = 0;
        string++;
    }
}