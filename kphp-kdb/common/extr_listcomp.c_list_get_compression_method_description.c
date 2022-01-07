
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char* list_get_compression_method_description (int compression_method) {
  switch (compression_method) {
  case 132:
    return "N == K";
  case 131:
    return "Golomb";
  case 130:
    return "Interpolative";
  case 129:
    return "Interpolative_ext";
  case 128:
    return "LLRUN";
  default:
    return "Unknown";
  }
}
