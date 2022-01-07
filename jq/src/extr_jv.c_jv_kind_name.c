
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv_kind ;
 int assert (int) ;

const char* jv_kind_name(jv_kind k) {
  switch (k) {
  case 133: return "<invalid>";
  case 132: return "null";
  case 134: return "boolean";
  case 128: return "boolean";
  case 131: return "number";
  case 129: return "string";
  case 135: return "array";
  case 130: return "object";
  }
  assert(0 && "invalid kind");
  return "<unknown>";
}
