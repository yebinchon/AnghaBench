
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_notifier_client {struct mdesc_notifier_client* next; } ;
struct mdesc_handle {int dummy; } ;


 struct mdesc_notifier_client* client_list ;
 int notify_one (struct mdesc_notifier_client*,struct mdesc_handle*,struct mdesc_handle*) ;

__attribute__((used)) static void mdesc_notify_clients(struct mdesc_handle *old_hp,
     struct mdesc_handle *new_hp)
{
 struct mdesc_notifier_client *p = client_list;

 while (p) {
  notify_one(p, old_hp, new_hp);
  p = p->next;
 }
}
