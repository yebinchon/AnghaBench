
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

int number_to_base62 (long long number, char *output, int olen) {
  int o = 0;
  static const char* const symbols = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  assert (number >= 0);
  if (!number) {
    if (o >= olen) return -1;
    output[o++] = '0';
  }
  while (number) {
    if (o >= olen) return -1;
    output[o++] = symbols[(int) (number % 62)];
    number /= 62;
  }
  if (o >= olen) {
    return -1;
  }
  output[o] = 0;

  int i = 0, j = o - 1;
  while (i < j) {
    char t = output[i]; output[i] = output[j]; output[j] = t;
    i++;
    j--;
  }

  return 0;
}
