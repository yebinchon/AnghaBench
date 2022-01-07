
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int jvp_utf8_decode_length(char startchar) {
 if ((startchar & 0x80) == 0) return 1;
 else if ((startchar & 0xE0) == 0xC0) return 2;
 else if ((startchar & 0xF0) == 0xE0) return 3;
 else return 4;
}
