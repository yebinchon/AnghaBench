
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_scheme_object {int type; } ;
const char *tl_strtype (struct tl_scheme_object *O) {
  switch (O->type) {
    case 133: return "int";
    case 131: return "long";
    case 135: return "double";
    case 128: return "str";
    case 134: return "function";
    case 132: return "list";
    case 130: return "(";
    case 129: return "[";
  }
  return ((void*)0);
}
