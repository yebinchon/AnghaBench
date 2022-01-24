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
typedef  int /*<<< orphan*/  xcb_char2b_t ;
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (scalar_t__,char**,size_t*,char**,size_t*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t,int) ; 
 scalar_t__ utf8_conversion_descriptor ; 

char *FUNC6(xcb_char2b_t *text, size_t num_glyphs) {
    /* Allocate the output buffer (UTF-8 is at most 4 bytes per glyph) */
    size_t buffer_size = num_glyphs * 4 + 1;
    char *buffer = FUNC5(buffer_size, 1);

    /* We need to use an additional pointer, because iconv() modifies it */
    char *output = buffer;
    size_t output_size = buffer_size - 1;

    if (utf8_conversion_descriptor == (iconv_t)-1) {
        /* Get a new conversion descriptor */
        utf8_conversion_descriptor = FUNC3("UTF-8", "UCS-2BE");
        if (utf8_conversion_descriptor == (iconv_t)-1)
            FUNC0(EXIT_FAILURE, "Error opening the conversion context");
    } else {
        /* Reset the existing conversion descriptor */
        FUNC2(utf8_conversion_descriptor, NULL, NULL, NULL, NULL);
    }

    /* Do the conversion */
    size_t input_len = num_glyphs * sizeof(xcb_char2b_t);
    size_t rc = FUNC2(utf8_conversion_descriptor, (char **)&text,
                      &input_len, &output, &output_size);
    if (rc == (size_t)-1) {
        FUNC4("Converting to UTF-8 failed");
        FUNC1(buffer);
        return NULL;
    }

    return buffer;
}