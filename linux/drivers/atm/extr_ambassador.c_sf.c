
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KERN_ERR ;
 int PRINTK (int ,char*,char const*) ;

__attribute__((used)) static inline void sf (const char * msg)
{
 PRINTK (KERN_ERR, "self-test failed: %s", msg);
}
