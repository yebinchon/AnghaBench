
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 int UV_ENOSPC ;
 int UV__INET_ADDRSTRLEN ;
 int snprintf (char*,int,char const*,unsigned char const,unsigned char const,unsigned char const,unsigned char const) ;
 int uv__strscpy (char*,char*,size_t) ;

__attribute__((used)) static int inet_ntop4(const unsigned char *src, char *dst, size_t size) {
  static const char fmt[] = "%u.%u.%u.%u";
  char tmp[UV__INET_ADDRSTRLEN];
  int l;

  l = snprintf(tmp, sizeof(tmp), fmt, src[0], src[1], src[2], src[3]);
  if (l <= 0 || (size_t) l >= size) {
    return UV_ENOSPC;
  }
  uv__strscpy(dst, tmp, size);
  return 0;
}
