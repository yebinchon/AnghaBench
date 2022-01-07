
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ git_remote_head ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int find_head(const void *_a, const void *_b)
{
 git_remote_head *a = (git_remote_head *) _a;
 git_remote_head *b = (git_remote_head *) _b;

 return strcmp(a->name, b->name);
}
