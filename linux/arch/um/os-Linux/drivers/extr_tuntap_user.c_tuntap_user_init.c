
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_data {void* dev; } ;



__attribute__((used)) static int tuntap_user_init(void *data, void *dev)
{
 struct tuntap_data *pri = data;

 pri->dev = dev;
 return 0;
}
