
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

const char *get_format (int format) {
  switch (format) {
    case 128: return "gz";
    case 130: return "bzip";
    case 129: return "xz";
  }
  static char buf[32];
  sprintf (buf, "unknown (%d)", format);
  return buf;
}
