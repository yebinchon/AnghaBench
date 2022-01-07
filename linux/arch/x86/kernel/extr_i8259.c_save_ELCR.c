
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (int) ;

__attribute__((used)) static void save_ELCR(char *trigger)
{

 trigger[0] = inb(0x4d0) & 0xF8;
 trigger[1] = inb(0x4d1) & 0xDE;
}
