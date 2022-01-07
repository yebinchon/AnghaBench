
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ git_remote_head ;


 int git__strcmp_cb (int ,int ) ;

__attribute__((used)) static int remote_head_cmp(const void *_a, const void *_b)
{
 const git_remote_head *a = (git_remote_head *) _a;
 const git_remote_head *b = (git_remote_head *) _b;

 return git__strcmp_cb(a->name, b->name);
}
