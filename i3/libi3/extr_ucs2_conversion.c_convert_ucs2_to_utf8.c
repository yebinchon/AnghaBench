
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_char2b_t ;
typedef scalar_t__ iconv_t ;


 int EXIT_FAILURE ;
 int err (int ,char*) ;
 int free (char*) ;
 size_t iconv (scalar_t__,char**,size_t*,char**,size_t*) ;
 scalar_t__ iconv_open (char*,char*) ;
 int perror (char*) ;
 char* scalloc (size_t,int) ;
 scalar_t__ utf8_conversion_descriptor ;

char *convert_ucs2_to_utf8(xcb_char2b_t *text, size_t num_glyphs) {

    size_t buffer_size = num_glyphs * 4 + 1;
    char *buffer = scalloc(buffer_size, 1);


    char *output = buffer;
    size_t output_size = buffer_size - 1;

    if (utf8_conversion_descriptor == (iconv_t)-1) {

        utf8_conversion_descriptor = iconv_open("UTF-8", "UCS-2BE");
        if (utf8_conversion_descriptor == (iconv_t)-1)
            err(EXIT_FAILURE, "Error opening the conversion context");
    } else {

        iconv(utf8_conversion_descriptor, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    }


    size_t input_len = num_glyphs * sizeof(xcb_char2b_t);
    size_t rc = iconv(utf8_conversion_descriptor, (char **)&text,
                      &input_len, &output, &output_size);
    if (rc == (size_t)-1) {
        perror("Converting to UTF-8 failed");
        free(buffer);
        return ((void*)0);
    }

    return buffer;
}
