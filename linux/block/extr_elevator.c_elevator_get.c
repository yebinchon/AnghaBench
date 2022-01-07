
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int required_elevator_features; } ;
struct elevator_type {int elevator_owner; } ;


 struct elevator_type* elevator_find (char const*,int ) ;
 int elv_list_lock ;
 int request_module (char*,char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct elevator_type *elevator_get(struct request_queue *q,
       const char *name, bool try_loading)
{
 struct elevator_type *e;

 spin_lock(&elv_list_lock);

 e = elevator_find(name, q->required_elevator_features);
 if (!e && try_loading) {
  spin_unlock(&elv_list_lock);
  request_module("%s-iosched", name);
  spin_lock(&elv_list_lock);
  e = elevator_find(name, q->required_elevator_features);
 }

 if (e && !try_module_get(e->elevator_owner))
  e = ((void*)0);

 spin_unlock(&elv_list_lock);
 return e;
}
