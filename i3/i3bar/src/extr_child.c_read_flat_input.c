
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_block {int full_text; } ;


 int I3STRING_FREE (int ) ;
 struct status_block* TAILQ_FIRST (int *) ;
 int i3string_from_utf8 (char*) ;
 int statusline_head ;

__attribute__((used)) static void read_flat_input(char *buffer, int length) {
    struct status_block *first = TAILQ_FIRST(&statusline_head);

    I3STRING_FREE(first->full_text);


    if (buffer[length - 1] == '\n' || buffer[length - 1] == '\r') {
        buffer[length - 1] = '\0';
    } else {
        buffer[length] = '\0';
    }

    first->full_text = i3string_from_utf8(buffer);
}
