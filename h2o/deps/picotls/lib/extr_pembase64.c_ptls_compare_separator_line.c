
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static int ptls_compare_separator_line(const char *line, const char *begin_or_end, const char *label)
{
    int ret = strncmp(line, "-----", 5);
    size_t text_index = 5;

    if (ret == 0) {
        size_t begin_or_end_length = strlen(begin_or_end);
        ret = strncmp(line + text_index, begin_or_end, begin_or_end_length);
        text_index += begin_or_end_length;
    }

    if (ret == 0) {
        ret = line[text_index] - ' ';
        text_index++;
    }

    if (ret == 0) {
        size_t label_length = strlen(label);
        ret = strncmp(line + text_index, label, label_length);
        text_index += label_length;
    }

    if (ret == 0) {
        ret = strncmp(line + text_index, "-----", 5);
    }

    return ret;
}
