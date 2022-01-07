
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;

__attribute__((used)) static void show_bit(size_t pos, void *data)
{
 printf(" %d", (int)pos);
}
