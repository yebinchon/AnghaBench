
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_scope_id; int sin6_port; int sin6_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_5__ {int scope_id; int port; int ip6; int type; int ip; } ;
typedef TYPE_2__ netadr_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int NA_IP ;
 int NA_IP6 ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void SockadrToNetadr( struct sockaddr *s, netadr_t *a ) {
 if (s->sa_family == AF_INET) {
  a->type = NA_IP;
  *(int *)&a->ip = ((struct sockaddr_in *)s)->sin_addr.s_addr;
  a->port = ((struct sockaddr_in *)s)->sin_port;
 }
 else if(s->sa_family == AF_INET6)
 {
  a->type = NA_IP6;
  memcpy(a->ip6, &((struct sockaddr_in6 *)s)->sin6_addr, sizeof(a->ip6));
  a->port = ((struct sockaddr_in6 *)s)->sin6_port;
  a->scope_id = ((struct sockaddr_in6 *)s)->sin6_scope_id;
 }
}
