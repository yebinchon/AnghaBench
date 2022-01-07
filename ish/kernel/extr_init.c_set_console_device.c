
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_major ;
 int console_minor ;

void set_console_device(int major, int minor) {
    console_major = major;
    console_minor = minor;
}
