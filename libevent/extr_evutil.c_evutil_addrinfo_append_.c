
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {struct evutil_addrinfo* ai_next; } ;



struct evutil_addrinfo *
evutil_addrinfo_append_(struct evutil_addrinfo *first,
    struct evutil_addrinfo *append)
{
 struct evutil_addrinfo *ai = first;
 if (!ai)
  return append;
 while (ai->ai_next)
  ai = ai->ai_next;
 ai->ai_next = append;

 return first;
}
