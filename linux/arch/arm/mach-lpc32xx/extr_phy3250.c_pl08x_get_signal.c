
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl08x_channel_data {int min_signal; } ;



__attribute__((used)) static int pl08x_get_signal(const struct pl08x_channel_data *cd)
{
 return cd->min_signal;
}
