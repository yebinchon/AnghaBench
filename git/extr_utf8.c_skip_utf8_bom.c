
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char*,int ,size_t) ;
 size_t strlen (int ) ;
 int utf8_bom ;

int skip_utf8_bom(char **text, size_t len)
{
 if (len < strlen(utf8_bom) ||
     memcmp(*text, utf8_bom, strlen(utf8_bom)))
  return 0;
 *text += strlen(utf8_bom);
 return 1;
}
