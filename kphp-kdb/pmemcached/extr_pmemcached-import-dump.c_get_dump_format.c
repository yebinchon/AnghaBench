
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TF_API_UVARS ;
 int TF_KAD ;
 int TF_NONE ;
 int TF_SHORT_URLS ;
 int TF_STORAGE_IMG ;
 int strncmp (char*,char*,int) ;

int get_dump_format (char *str) {
  if (!strncmp (str, "short_urls", 9)) {
    return TF_SHORT_URLS;
  } else if (!strncmp (str, "api_uvars", 9)) {
    return TF_API_UVARS;
  } else if (!strncmp (str, "storage_img", 11) || !strncmp (str, "keyvalue", 9)) {
    return TF_STORAGE_IMG;
  } else if (!strncmp (str, "kad", 4)) {
    return TF_KAD;
  }
  return TF_NONE;
}
