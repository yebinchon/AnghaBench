
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ concat_strings (int ,int ) ;
 int exit (int ) ;
 char* format ;
 int free (char*) ;
 int glyphs_utf8 ;
 int input_position ;
 int ipc_send_message (int ,int,int ,int *) ;
 int printf (char*,...) ;
 char* scalloc (int,int) ;
 int sockfd ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static void finish_input(void) {
    char *command = (char *)concat_strings(glyphs_utf8, input_position);


    int c;
    int len = strlen(format);
    int cnt = 0;
    for (c = 0; c < (len - 1); c++)
        if (format[c] == '%' && format[c + 1] == 's')
            cnt++;
    printf("occurrences = %d\n", cnt);


    int inputlen = strlen(command);
    char *full = scalloc(strlen(format) - (2 * cnt)
                             + (inputlen * cnt)
                             + 1,
                         1);
    char *dest = full;
    for (c = 0; c < len; c++) {


        if (format[c] != '%' || (c == (len - 1)) || format[c + 1] != 's')
            *(dest++) = format[c];
        else {
            strncat(dest, command, inputlen);
            dest += inputlen;

            c++;
        }
    }


    printf("command = %s\n", full);

    ipc_send_message(sockfd, strlen(full), 0, (uint8_t *)full);

    free(full);

    exit(0);
}
