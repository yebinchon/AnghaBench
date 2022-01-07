
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char const*) ;

__attribute__((used)) static void default_die_handler(const char *msg) {
    printk("%s\n", msg);
}
