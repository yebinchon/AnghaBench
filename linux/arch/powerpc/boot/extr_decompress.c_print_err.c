
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ decompressed_bytes ;
 scalar_t__ limit ;
 int printf (char*,char*) ;

__attribute__((used)) static void print_err(char *s)
{

 if (decompressed_bytes >= limit)
  return;

 printf("Decompression error: '%s'\n\r", s);
}
