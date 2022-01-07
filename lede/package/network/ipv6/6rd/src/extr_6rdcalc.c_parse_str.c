
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int inet_pton (int,char*,void*) ;
 int print_error () ;
 int print_usage () ;
 char* strchr (char*,char) ;
 unsigned long strtoul (char*,int *,int) ;

__attribute__((used)) static void parse_str(int af, char *str, void *addr, unsigned long *mask)
{
 int ret;
 char *slash;


 if ((slash = strchr(str, '/')) == ((void*)0))
  print_usage();
 *slash = '\0';


 if ((ret = inet_pton(af, str, addr)) != 1) {
  if (ret == 0)
   print_usage();
  else
   print_error();
 }


 *mask = strtoul(slash+1, ((void*)0), 10);
 if ((af == AF_INET && *mask > 32) ||
  (af == AF_INET6 && *mask > 128))
  print_usage();
}
