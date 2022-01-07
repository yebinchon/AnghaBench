
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int board_putc (char) ;

__attribute__((used)) static void printf_output(void *arg, char *s, int l)
{
    int i;


    if ((l==1) && (s[0] == '\0')) return;

    for (i=0; i< l; i++) {
 board_putc(s[i]);
 if (s[i] == '\n') board_putc('\r');
    }
}
