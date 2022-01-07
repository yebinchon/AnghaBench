
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sa_open_data {int dummy; } ;
typedef int gfp_t ;


 int EINVAL ;
 int fprintf (int ,char*,...) ;
 int ipv4_list_add_net (struct sa_open_data*,int ,int,int ) ;
 int ipv4_list_add_netmask (struct sa_open_data*,int ,int ,int ) ;
 int ipv4_list_add_range (struct sa_open_data*,int ,int ,int ) ;
 int ipv4_stohl (char*) ;
 int is_ipv4_addr (char*) ;
 int sscanf (char*,char*,int*) ;
 int stderr ;
 char* strchr (char*,char) ;

__attribute__((used)) static int salist_cmd_parse(struct sa_open_data *od, char *cmd, gfp_t gfp)
{
 char *a1 = ((void*)0), *a2 = ((void*)0);
 char *sep;
 char sc;
 int n = 32;




 if ((sep = strchr(cmd, '/'))) { }
 else if ((sep = strchr(cmd, '-'))) { }
 else if ((sep = strchr(cmd, ':'))) { }

 if (sep) {

  sc = *sep;
  *sep = '\0';

  a1 = cmd;
  a2 = sep + 1;

  if (*a2 == '\0') {
   fprintf(stderr, "Nothing after '%c'.\n", sc);
   return -EINVAL;
  }
 } else {

  sc = '\0';
  a1 = cmd;
 }

 switch (sc) {
 case '/':


  if (is_ipv4_addr(a2)) {
   ipv4_list_add_netmask(od, ipv4_stohl(a1), ipv4_stohl(a2), gfp);
  } else {
   sscanf(a2, "%d", &n);
   ipv4_list_add_net(od, ipv4_stohl(a1), n, gfp);
  }

  break;
 case ':':
 case '-':


  ipv4_list_add_range(od, ipv4_stohl(a1), ipv4_stohl(a2), gfp);

  break;
 default:
  if (is_ipv4_addr(a1)) {

   u32 ip = ipv4_stohl(a1);

   ipv4_list_add_range(od, ip, ip, gfp);

  } else {
   fprintf(stderr, "Invalid IP address '%s'.\n", a1);
   return -EINVAL;
  }
  break;
 }
 return 0;
}
