
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char) ;

__attribute__((used)) static int word_char(char ch)
{
 return isalnum(ch) || ch == '_';
}
