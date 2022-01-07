
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *get_answer_from_qa (char *s) {
  while (*s != '\t') {
    ++s;
  }
  return ++s;
}
