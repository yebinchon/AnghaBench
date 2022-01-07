
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head packed_git_mru; } ;


 int prepare_packed_git (struct repository*) ;

struct list_head *get_packed_git_mru(struct repository *r)
{
 prepare_packed_git(r);
 return &r->objects->packed_git_mru;
}
