#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int UV_EAFNOSUPPORT ; 
 int UV_EINVAL ; 
 int UV__INET6_ADDRSTRLEN ; 
 int FUNC0 (char const*,void*) ; 
 int FUNC1 (char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 

int FUNC4(int af, const char* src, void* dst) {
  if (src == NULL || dst == NULL)
    return UV_EINVAL;

  switch (af) {
  case AF_INET:
    return (FUNC0(src, dst));
  case AF_INET6: {
    int len;
    char tmp[UV__INET6_ADDRSTRLEN], *s, *p;
    s = (char*) src;
    p = FUNC3(src, '%');
    if (p != NULL) {
      s = tmp;
      len = p - src;
      if (len > UV__INET6_ADDRSTRLEN-1)
        return UV_EINVAL;
      FUNC2(s, src, len);
      s[len] = '\0';
    }
    return FUNC1(s, dst);
  }
  default:
    return UV_EAFNOSUPPORT;
  }
  /* NOTREACHED */
}