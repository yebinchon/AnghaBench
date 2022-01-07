
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int MCONSOLE_PANIC ;
 int mconsole_notify (int *,int ,char*,scalar_t__) ;
 int * notify_socket ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int notify_panic(struct notifier_block *self, unsigned long unused1,
   void *ptr)
{
 char *message = ptr;

 if (notify_socket == ((void*)0))
  return 0;

 mconsole_notify(notify_socket, MCONSOLE_PANIC, message,
   strlen(message) + 1);
 return 0;
}
