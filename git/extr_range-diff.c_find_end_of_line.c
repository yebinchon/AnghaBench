
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char*,char,unsigned long) ;

__attribute__((used)) static size_t find_end_of_line(char *buffer, unsigned long size)
{
 char *eol = memchr(buffer, '\n', size);

 if (!eol)
  return size;

 *eol = '\0';
 return eol + 1 - buffer;
}
