
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_crud(unsigned char c)
{
 return c <= 32 ||
  c == '.' ||
  c == ',' ||
  c == ':' ||
  c == ';' ||
  c == '<' ||
  c == '>' ||
  c == '"' ||
  c == '\\' ||
  c == '\'';
}
