
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_boms () ;
 int check_long_utf16 () ;
 int check_long_utf8 () ;
 int check_utf8_sequences () ;

int
main(void)
{
    return check_utf8_sequences() + check_boms() + check_long_utf8() + check_long_utf16();
}
