
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct packed_git {int dummy; } ;
struct TYPE_2__ {struct packed_git* packed_git; } ;


 int prepare_packed_git (struct repository*) ;

struct packed_git *get_packed_git(struct repository *r)
{
 prepare_packed_git(r);
 return r->objects->packed_git;
}
