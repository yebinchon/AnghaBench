
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ug_io_transaction (int) ;

__attribute__((used)) static int ug_is_txfifo_ready(void)
{
 return ug_io_transaction(0xc0000000) & 0x04000000;
}
