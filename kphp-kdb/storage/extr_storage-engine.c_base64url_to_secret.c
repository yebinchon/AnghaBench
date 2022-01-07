
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base64url_decode (char const*,unsigned char*,int) ;

__attribute__((used)) static inline int base64url_to_secret (const char *input, unsigned long long *secret) {
  int r = base64url_decode (input, (unsigned char *) secret, 8);
  if (r < 0) {
    return r;
  }
  if (r != 8) {
    return -7;
  }
  return 0;
}
