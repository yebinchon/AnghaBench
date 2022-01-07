
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_family; struct addrinfo* ai_next; } ;
typedef scalar_t__ sa_family_t ;



__attribute__((used)) static struct addrinfo *SearchAddrInfo(struct addrinfo *hints, sa_family_t family)
{
 while(hints)
 {
  if(hints->ai_family == family)
   return hints;

  hints = hints->ai_next;
 }

 return ((void*)0);
}
