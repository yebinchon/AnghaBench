
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

int base64url_to_base64 (const char *const input, char *output, int olen) {
  int i = 0;
  while (input[i] && i < olen) {
    if (input[i] == '-') {
      output[i] = '+';
    } else if (input[i] == '_') {
      output[i] = '/';
    } else {
      output[i] = input[i];
    }
    i++;
  }
  if (((i + 3) & -4) >= olen) {
    return -1;
  }
  while (i & 3) {
    output[i++] = '=';
  }
  output[i] = 0;
  assert (i < olen);
  return 0;
}
