
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* buf; } ;
struct hostinfo {TYPE_1__ canon_hostname; } ;


 int lookup_hostname (struct hostinfo*) ;

__attribute__((used)) static const char *get_canon_hostname(struct hostinfo *hi)
{
 lookup_hostname(hi);
 return hi->canon_hostname.buf;
}
