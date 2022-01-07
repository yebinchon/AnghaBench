
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EAFNOSUPPORT ;
 int UV_EINVAL ;
 int UV__INET6_ADDRSTRLEN ;
 int inet_pton4 (char const*,void*) ;
 int inet_pton6 (char*,void*) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;

int uv_inet_pton(int af, const char* src, void* dst) {
  if (src == ((void*)0) || dst == ((void*)0))
    return UV_EINVAL;

  switch (af) {
  case 129:
    return (inet_pton4(src, dst));
  case 128: {
    int len;
    char tmp[UV__INET6_ADDRSTRLEN], *s, *p;
    s = (char*) src;
    p = strchr(src, '%');
    if (p != ((void*)0)) {
      s = tmp;
      len = p - src;
      if (len > UV__INET6_ADDRSTRLEN-1)
        return UV_EINVAL;
      memcpy(s, src, len);
      s[len] = '\0';
    }
    return inet_pton6(s, dst);
  }
  default:
    return UV_EAFNOSUPPORT;
  }

}
