
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char OPERAND_MASK ;
 int parse_int (char const**,size_t*,char const*) ;

__attribute__((used)) static int parse_first_operand(const char **buf, size_t *out, const char *end)
{
 size_t result = (unsigned char) *(*buf)++ & OPERAND_MASK;
 if (result) {
  *out = result;
  return 0;
 }
 return parse_int(buf, out, end);
}
