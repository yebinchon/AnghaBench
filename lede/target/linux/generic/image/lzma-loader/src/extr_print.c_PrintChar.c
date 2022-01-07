
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
PrintChar(char * buf, char c, int length, int ladjust)
{
    int i;

    if (length < 1) length = 1;
    if (ladjust) {
 *buf = c;
 for (i=1; i< length; i++) buf[i] = ' ';
    } else {
 for (i=0; i< length-1; i++) buf[i] = ' ';
 buf[length - 1] = c;
    }
    return length;
}
