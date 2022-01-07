
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int list_del (struct list_head*) ;

__attribute__((used)) static inline void list_del_init(struct list_head *elem)
{
 list_del(elem);
 INIT_LIST_HEAD(elem);
}
