
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int return_one_key (struct connection*,char const*,char*,int ) ;
 int sprintf (char*,char*,long long) ;

__attribute__((used)) static int return_one_long (struct connection *c, const char *key, long long x) {
  static char s[32];
  return return_one_key (c, key, s, sprintf (s, "%lld", x));
}
