
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EQ (unsigned int const,char) ;
 int GE (int,char) ;
 int LE (int,char) ;

__attribute__((used)) static unsigned int
b64_char_to_byte(int c)
{
    const unsigned int x =
        (GE(c, 'A') & LE(c, 'Z') & (c - 'A')) |
        (GE(c, 'a') & LE(c, 'z') & (c - ('a' - 26))) |
        (GE(c, '0') & LE(c, '9') & (c - ('0' - 52))) | (EQ(c, '+') & 62) |
        (EQ(c, '/') & 63);

    return x | (EQ(x, 0) & (EQ(c, 'A') ^ 0xFF));
}
