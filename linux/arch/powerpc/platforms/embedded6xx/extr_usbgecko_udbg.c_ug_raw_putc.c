
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ug_io_transaction (int) ;

__attribute__((used)) static void ug_raw_putc(char ch)
{
 ug_io_transaction(0xb0000000 | (ch << 20));
}
