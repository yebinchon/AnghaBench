
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct device_driver {int dummy; } ;



__attribute__((used)) static inline void module_add_driver(struct module *mod,
         struct device_driver *drv) { }
