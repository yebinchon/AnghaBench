
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isascii (int) ;

__attribute__((used)) static int non_ascii(int ch)
{
 return !isascii(ch) || ch == '\033';
}
