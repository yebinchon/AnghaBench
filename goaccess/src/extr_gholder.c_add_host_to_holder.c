
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct in_addr {int s_addr; int* s6_addr; } ;
struct in6_addr {int s_addr; int* s6_addr; } ;
struct TYPE_7__ {int anonymize_ip; } ;
struct TYPE_6__ {int module; } ;
typedef int GRawDataType ;
typedef int GRawDataItem ;
typedef int GPanel ;
typedef TYPE_1__ GHolder ;


 int AF_INET ;
 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int INET_ADDRSTRLEN ;
 int add_data_to_holder (int ,TYPE_1__*,int ,int const*) ;
 TYPE_3__ conf ;
 int free (char*) ;
 int * inet_ntop (int ,struct in_addr*,char*,int) ;
 int inet_pton (int ,char const*,struct in_addr*) ;
 int memset (char*,int ,int) ;
 int set_data_hits_keys (int ,int ,int ,char**,int*) ;
 int set_host (int ,TYPE_1__*,int const*,char*,int) ;

__attribute__((used)) static void
add_host_to_holder (GRawDataItem item, GHolder * h, GRawDataType type,
                    const GPanel * panel)
{
  char buf4[INET_ADDRSTRLEN];
  char buf6[INET6_ADDRSTRLEN];
  char *data = ((void*)0);
  int hits = 0;
  unsigned i;

  struct in6_addr addr6, mask6, nwork6;
  struct in_addr addr4, mask4, nwork4;

  const char *m4 = "255.255.255.0";
  const char *m6 = "ffff:ffff:ffff:ffff:0000:0000:0000:0000";

  if (set_data_hits_keys (h->module, item, type, &data, &hits) == 1)
    return;

  if (!conf.anonymize_ip) {
    add_data_to_holder (item, h, type, panel);
    free (data);
    return;
  }

  if (1 == inet_pton (AF_INET, data, &addr4)) {
    if (1 == inet_pton (AF_INET, m4, &mask4)) {
      memset (buf4, 0, sizeof *buf4);
      nwork4.s_addr = addr4.s_addr & mask4.s_addr;

      if (inet_ntop (AF_INET, &nwork4, buf4, INET_ADDRSTRLEN) != ((void*)0)) {
        set_host (item, h, panel, buf4, hits);
        free (data);
      }
    }
  } else if (1 == inet_pton (AF_INET6, data, &addr6)) {
    if (1 == inet_pton (AF_INET6, m6, &mask6)) {
      memset (buf6, 0, sizeof *buf6);
      for (i = 0; i < 16; i++) {
        nwork6.s6_addr[i] = addr6.s6_addr[i] & mask6.s6_addr[i];
      }

      if (inet_ntop (AF_INET6, &nwork6, buf6, INET6_ADDRSTRLEN) != ((void*)0)) {
        set_host (item, h, panel, buf6, hits);
        free (data);
      }
    }
  }
}
