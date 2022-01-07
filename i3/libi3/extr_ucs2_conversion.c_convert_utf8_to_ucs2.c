
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_char2b_t ;
typedef scalar_t__ iconv_t ;


 int EXIT_FAILURE ;
 int err (int ,char*) ;
 size_t iconv (scalar_t__,char**,size_t*,char**,size_t*) ;
 scalar_t__ iconv_open (char*,char*) ;
 int perror (char*) ;
 int * smalloc (size_t) ;
 int * srealloc (int *,size_t) ;
 size_t strlen (char*) ;
 scalar_t__ ucs2_conversion_descriptor ;

xcb_char2b_t *convert_utf8_to_ucs2(char *input, size_t *real_strlen) {

    size_t input_size = strlen(input);


    size_t buffer_size = input_size * sizeof(xcb_char2b_t);
    xcb_char2b_t *buffer = smalloc(buffer_size);


    size_t output_bytes_left = buffer_size;
    xcb_char2b_t *output = buffer;

    if (ucs2_conversion_descriptor == (iconv_t)-1) {



        ucs2_conversion_descriptor = iconv_open("UCS-2BE//IGNORE", "UTF-8");
        if (ucs2_conversion_descriptor == (iconv_t)-1) {
            ucs2_conversion_descriptor = iconv_open("UCS-2BE", "UTF-8");
        }
        if (ucs2_conversion_descriptor == (iconv_t)-1) {
            err(EXIT_FAILURE, "Error opening the conversion context");
        }
    } else {

        iconv(ucs2_conversion_descriptor, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    }


    size_t rc = iconv(ucs2_conversion_descriptor, &input, &input_size,
                      (char **)&output, &output_bytes_left);
    if (rc == (size_t)-1) {

        perror("Converting to UCS-2 failed");
    }


    buffer_size -= output_bytes_left;
    buffer = srealloc(buffer, buffer_size);


    if (real_strlen != ((void*)0)) {
        *real_strlen = buffer_size / sizeof(xcb_char2b_t);
    }

    return buffer;
}
