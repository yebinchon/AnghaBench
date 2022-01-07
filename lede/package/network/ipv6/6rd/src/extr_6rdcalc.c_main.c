
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v6str ;
struct in_addr {int s6_addr; int s_addr; } ;
struct in6_addr {int s6_addr; int s_addr; } ;


 int AF_INET ;
 int AF_INET6 ;
 int INET6_PREFIXSTRLEN ;
 int INET_PREFIXSTRLEN ;
 int * inet_ntop (int ,struct in_addr*,char*,int) ;
 int parse_str (int ,char*,struct in_addr*,unsigned long*) ;
 int print_error () ;
 int print_usage () ;
 int printf (char*,char*,unsigned long) ;
 int strncpy (char*,char const*,int) ;

int main(int argc, const char **argv)
{
 char v6str[INET6_PREFIXSTRLEN], v4str[INET_PREFIXSTRLEN];
 struct in6_addr v6;
 struct in_addr v4;
 unsigned long v6it, v4it, mask;
 unsigned char *byte4, *byte6;
 unsigned char bit4, bit6;


 if (argc != 3)
  print_usage();


 strncpy(v6str, argv[1], INET6_PREFIXSTRLEN);
 v6str[INET6_PREFIXSTRLEN-1] = '\0';
 parse_str(AF_INET6, v6str, &v6, &v6it);


 strncpy(v4str, argv[2], INET_PREFIXSTRLEN);
 v6str[INET_PREFIXSTRLEN-1] = '\0';
 parse_str(AF_INET, v4str, &v4, &v4it);


 mask = (32 - v4it) + v6it;
 if (mask > 128)
  print_usage();


 while (v4it < 32) {
  byte6 = (unsigned char *)(&v6.s6_addr) + (v6it >> 3);
  byte4 = (unsigned char *)(&v4.s_addr) + (v4it >> 3);
  bit6 = 128 >> (v6it & 0x07);
  bit4 = 128 >> (v4it & 0x07);

  if (*byte4 & bit4)
   *byte6 |= bit6;
  else
   *byte6 &= ~bit6;

  v4it++; v6it++;
 }


 while (v6it < 128) {
  byte6 = (unsigned char *)(&v6.s6_addr) + (v6it >> 3);
  bit6 = 128 >> (v6it & 0x07);

  *byte6 &= ~bit6;

  v6it++;
 }


 if (inet_ntop(AF_INET6, &v6, v6str, sizeof(v6str)) == ((void*)0))
  print_error();
 printf("%s/%lu\n", v6str, mask);
 return 0;
}
