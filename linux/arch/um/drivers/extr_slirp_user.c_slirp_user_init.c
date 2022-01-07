
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slirp_data {void* dev; } ;



__attribute__((used)) static int slirp_user_init(void *data, void *dev)
{
 struct slirp_data *pri = data;

 pri->dev = dev;
 return 0;
}
