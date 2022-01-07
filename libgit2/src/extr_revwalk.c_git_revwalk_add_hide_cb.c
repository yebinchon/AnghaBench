
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ git_revwalk_hide_cb ;
struct TYPE_5__ {int limited; void* hide_cb_payload; scalar_t__ hide_cb; scalar_t__ walking; } ;
typedef TYPE_1__ git_revwalk ;


 int assert (TYPE_1__*) ;
 int git_revwalk_reset (TYPE_1__*) ;

int git_revwalk_add_hide_cb(
 git_revwalk *walk,
 git_revwalk_hide_cb hide_cb,
 void *payload)
{
 assert(walk);

 if (walk->walking)
  git_revwalk_reset(walk);

 walk->hide_cb = hide_cb;
 walk->hide_cb_payload = payload;

 if (hide_cb)
  walk->limited = 1;

 return 0;
}
