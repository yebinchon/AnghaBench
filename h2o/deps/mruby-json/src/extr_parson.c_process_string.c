
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JSONFailure ;
 int memcpy (char*,char*,size_t) ;
 int parse_utf16 (char const**,char**) ;
 int parson_free (char*) ;
 scalar_t__ parson_malloc (size_t) ;

__attribute__((used)) static char* process_string(const char *input, size_t len) {
    const char *input_ptr = input;
    size_t initial_size = (len + 1) * sizeof(char);
    size_t final_size = 0;
    char *output = ((void*)0), *output_ptr = ((void*)0), *resized_output = ((void*)0);
    output = (char*)parson_malloc(initial_size);
    if (output == ((void*)0)) {
        goto error;
    }
    output_ptr = output;
    while ((*input_ptr != '\0') && (size_t)(input_ptr - input) < len) {
        if (*input_ptr == '\\') {
            input_ptr++;
            switch (*input_ptr) {
                case '\"': *output_ptr = '\"'; break;
                case '\\': *output_ptr = '\\'; break;
                case '/': *output_ptr = '/'; break;
                case 'b': *output_ptr = '\b'; break;
                case 'f': *output_ptr = '\f'; break;
                case 'n': *output_ptr = '\n'; break;
                case 'r': *output_ptr = '\r'; break;
                case 't': *output_ptr = '\t'; break;
                case 'u':
                    if (parse_utf16(&input_ptr, &output_ptr) == JSONFailure) {
                        goto error;
                    }
                    break;
                default:
                    goto error;
            }
        } else if ((unsigned char)*input_ptr < 0x20) {
            goto error;
        } else {
            *output_ptr = *input_ptr;
        }
        output_ptr++;
        input_ptr++;
    }
    *output_ptr = '\0';

    final_size = (size_t)(output_ptr-output) + 1;

    resized_output = (char*)parson_malloc(final_size);
    if (resized_output == ((void*)0)) {
        goto error;
    }
    memcpy(resized_output, output, final_size);
    parson_free(output);
    return resized_output;
error:
    parson_free(output);
    return ((void*)0);
}
