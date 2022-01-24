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
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static size_t FUNC4(const char *ass, char *output)
{
    char *tok = NULL;
    tok = FUNC1(ass, ':'); if (tok) tok += 1; // skip event
    tok = FUNC1(tok, ','); if (tok) tok += 1; // skip layer
    tok = FUNC1(tok, ','); if (tok) tok += 1; // skip start_time
    tok = FUNC1(tok, ','); if (tok) tok += 1; // skip end_time
    tok = FUNC1(tok, ','); if (tok) tok += 1; // skip style
    tok = FUNC1(tok, ','); if (tok) tok += 1; // skip name
    tok = FUNC1(tok, ','); if (tok) tok += 1; // skip margin_l
    tok = FUNC1(tok, ','); if (tok) tok += 1; // skip margin_r
    tok = FUNC1(tok, ','); if (tok) tok += 1; // skip margin_v
    tok = FUNC1(tok, ','); if (tok) tok += 1; // skip effect
    if (tok) {
        char *text = tok;
        size_t idx = 0;
        do {
            char *found = FUNC3(text, "\\N");
            if (found) {
                size_t n = found - text;
                FUNC0(output+idx, text, n);
                output[idx + n] = '\n';
                idx = n + 1;
                text = found + 2;
            }
            else {
                size_t left_text_len = FUNC2(text);
                FUNC0(output+idx, text, left_text_len);
                if (output[idx + left_text_len - 1] == '\n')
                    output[idx + left_text_len - 1] = '\0';
                else
                    output[idx + left_text_len] = '\0';
                break;
            }
        } while(1);
        return FUNC2(output) + 1;
    }
    return 0;
}