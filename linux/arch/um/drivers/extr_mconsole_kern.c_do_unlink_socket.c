
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int mconsole_unlink_socket () ;

__attribute__((used)) static int do_unlink_socket(struct notifier_block *notifier,
       unsigned long what, void *data)
{
 return mconsole_unlink_socket();
}
