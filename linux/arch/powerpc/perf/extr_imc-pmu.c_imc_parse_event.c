
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct imc_events {void* name; void* scale; void* unit; scalar_t__ value; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 void* kasprintf (int ,char*,char const*,char const*) ;
 int kfree (void*) ;
 void* kstrdup (char const*,int ) ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;

__attribute__((used)) static int imc_parse_event(struct device_node *np, const char *scale,
      const char *unit, const char *prefix,
      u32 base, struct imc_events *event)
{
 const char *s;
 u32 reg;

 if (of_property_read_u32(np, "reg", &reg))
  goto error;

 event->value = base + reg;

 if (of_property_read_string(np, "event-name", &s))
  goto error;

 event->name = kasprintf(GFP_KERNEL, "%s%s", prefix, s);
 if (!event->name)
  goto error;

 if (of_property_read_string(np, "scale", &s))
  s = scale;

 if (s) {
  event->scale = kstrdup(s, GFP_KERNEL);
  if (!event->scale)
   goto error;
 }

 if (of_property_read_string(np, "unit", &s))
  s = unit;

 if (s) {
  event->unit = kstrdup(s, GFP_KERNEL);
  if (!event->unit)
   goto error;
 }

 return 0;
error:
 kfree(event->unit);
 kfree(event->scale);
 kfree(event->name);
 return -EINVAL;
}
