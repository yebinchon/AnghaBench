
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* h2o_mem_alloc (size_t) ;
 char* h2o_mem_realloc (char*,size_t) ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static char *expand_line_buf(char *line, size_t *cur_size, size_t required, int should_realloc)
{
    size_t new_size = *cur_size;


    do {
        new_size *= 2;
    } while (new_size < required);


    if (!should_realloc) {
        char *newpt = h2o_mem_alloc(new_size);
        memcpy(newpt, line, *cur_size);
        line = newpt;
    } else {
        line = h2o_mem_realloc(line, new_size);
    }
    *cur_size = new_size;

    return line;
}
