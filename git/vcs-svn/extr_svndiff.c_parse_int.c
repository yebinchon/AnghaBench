
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t VLI_BITS_PER_DIGIT ;
 unsigned char VLI_CONTINUE ;
 unsigned char VLI_DIGIT_MASK ;
 int error (char*) ;

__attribute__((used)) static int parse_int(const char **buf, size_t *result, const char *end)
{
 size_t rv = 0;
 const char *pos;
 for (pos = *buf; pos != end; pos++) {
  unsigned char ch = *pos;

  rv <<= VLI_BITS_PER_DIGIT;
  rv += (ch & VLI_DIGIT_MASK);
  if (ch & VLI_CONTINUE)
   continue;

  *result = rv;
  *buf = pos + 1;
  return 0;
 }
 return error("invalid delta: unexpected end of instructions section");
}
