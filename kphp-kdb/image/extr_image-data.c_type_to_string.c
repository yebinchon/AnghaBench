
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum forth_literal_type { ____Placeholder_forth_literal_type } forth_literal_type ;






__attribute__((used)) static const char *type_to_string (enum forth_literal_type tp) {
  switch (tp) {
  case 129:
    return "int";
  case 128:
    return "str";
  case 130:
    return "image";
  default:
    return "unknown";
  }
}
