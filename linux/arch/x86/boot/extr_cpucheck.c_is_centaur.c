
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ A32 (char,unsigned char,char,char) ;
 scalar_t__* cpu_vendor ;

__attribute__((used)) static int is_centaur(void)
{
 return cpu_vendor[0] == A32('C', 'e', 'n', 't') &&
        cpu_vendor[1] == A32('a', 'u', 'r', 'H') &&
        cpu_vendor[2] == A32('a', 'u', 'l', 's');
}
