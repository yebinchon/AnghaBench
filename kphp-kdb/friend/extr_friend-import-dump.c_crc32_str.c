
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int privacy_key_t ;


 int compute_crc32 (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static privacy_key_t crc32_str (const char *str) {
  return compute_crc32 (str, strlen(str));
}
