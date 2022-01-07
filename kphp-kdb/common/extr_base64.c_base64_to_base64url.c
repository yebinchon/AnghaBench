
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int base64_to_base64url (const char *const input, char *output, int olen) {
  int i = 0;
  while (input[i] && i < olen) {
    if (input[i] == '+') {
      output[i] = '-';
    } else if (input[i] == '/') {
      output[i] = '_';
    } else if (input[i] != '=') {
      output[i] = input[i];
    } else {
      break;
    }
    i++;
  }
  if (i >= olen) {
    return -1;
  }
  output[i] = 0;
  return 0;
}
