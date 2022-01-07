
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_data {char const* busid; unsigned int id; unsigned int mask; struct amba_device* dev; struct device* parent; } ;
struct device {int dummy; } ;
struct amba_device {int dummy; } ;


 int amba_bustype ;
 int amba_find_match ;
 int bus_for_each_dev (int *,int *,struct find_data*,int ) ;

struct amba_device *
amba_find_device(const char *busid, struct device *parent, unsigned int id,
   unsigned int mask)
{
 struct find_data data;

 data.dev = ((void*)0);
 data.parent = parent;
 data.busid = busid;
 data.id = id;
 data.mask = mask;

 bus_for_each_dev(&amba_bustype, ((void*)0), &data, amba_find_match);

 return data.dev;
}
