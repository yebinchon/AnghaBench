
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sin_family; } ;
struct TYPE_6__ {int address6; TYPE_3__ address4; } ;
struct TYPE_7__ {char* name; TYPE_1__ address; scalar_t__ is_internal; } ;
typedef TYPE_2__ uv_interface_address_t ;
typedef int buf ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int printf (char*,...) ;
 int uv_free_interface_addresses (TYPE_2__*,int) ;
 int uv_interface_addresses (TYPE_2__**,int*) ;
 int uv_ip4_name (TYPE_3__*,char*,int) ;
 int uv_ip6_name (int *,char*,int) ;

int main() {
    char buf[512];
    uv_interface_address_t *info;
    int count, i;

    uv_interface_addresses(&info, &count);
    i = count;

    printf("Number of interfaces: %d\n", count);
    while (i--) {
        uv_interface_address_t interface = info[i];

        printf("Name: %s\n", interface.name);
        printf("Internal? %s\n", interface.is_internal ? "Yes" : "No");

        if (interface.address.address4.sin_family == AF_INET) {
            uv_ip4_name(&interface.address.address4, buf, sizeof(buf));
            printf("IPv4 address: %s\n", buf);
        }
        else if (interface.address.address4.sin_family == AF_INET6) {
            uv_ip6_name(&interface.address.address6, buf, sizeof(buf));
            printf("IPv6 address: %s\n", buf);
        }

        printf("\n");
    }

    uv_free_interface_addresses(info, count);
    return 0;
}
