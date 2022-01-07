
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s6_addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int memcmp (int ,int ,int) ;

int
evutil_sockaddr_cmp(const struct sockaddr *sa1, const struct sockaddr *sa2,
    int include_port)
{
 int r;
 if (0 != (r = (sa1->sa_family - sa2->sa_family)))
  return r;

 if (sa1->sa_family == AF_INET) {
  const struct sockaddr_in *sin1, *sin2;
  sin1 = (const struct sockaddr_in *)sa1;
  sin2 = (const struct sockaddr_in *)sa2;
  if (sin1->sin_addr.s_addr < sin2->sin_addr.s_addr)
   return -1;
  else if (sin1->sin_addr.s_addr > sin2->sin_addr.s_addr)
   return 1;
  else if (include_port &&
      (r = ((int)sin1->sin_port - (int)sin2->sin_port)))
   return r;
  else
   return 0;
 }
 return 1;
}
