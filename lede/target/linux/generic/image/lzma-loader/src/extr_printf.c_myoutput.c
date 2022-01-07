
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Uart16550Put (char) ;

__attribute__((used)) static void myoutput(void *arg, char *s, int l)
{
    int i;


    if ((l==1) && (s[0] == '\0')) return;

    for (i=0; i< l; i++) {
 Uart16550Put(s[i]);
 if (s[i] == '\n') Uart16550Put('\r');
    }
}
