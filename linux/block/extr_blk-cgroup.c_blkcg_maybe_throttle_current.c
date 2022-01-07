
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct blkcg_gq {int dummy; } ;
struct blkcg {int dummy; } ;
struct TYPE_3__ {int use_memdelay; struct request_queue* throttle_queue; } ;


 int blk_put_queue (struct request_queue*) ;
 int blkcg_maybe_throttle_blkg (struct blkcg_gq*,int) ;
 struct blkcg_gq* blkg_lookup (struct blkcg*,struct request_queue*) ;
 int blkg_put (struct blkcg_gq*) ;
 int blkg_tryget (struct blkcg_gq*) ;
 struct blkcg* css_to_blkcg (struct cgroup_subsys_state*) ;
 TYPE_1__* current ;
 int io_cgrp_id ;
 struct cgroup_subsys_state* kthread_blkcg () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct cgroup_subsys_state* task_css (TYPE_1__*,int ) ;

void blkcg_maybe_throttle_current(void)
{
 struct request_queue *q = current->throttle_queue;
 struct cgroup_subsys_state *css;
 struct blkcg *blkcg;
 struct blkcg_gq *blkg;
 bool use_memdelay = current->use_memdelay;

 if (!q)
  return;

 current->throttle_queue = ((void*)0);
 current->use_memdelay = 0;

 rcu_read_lock();
 css = kthread_blkcg();
 if (css)
  blkcg = css_to_blkcg(css);
 else
  blkcg = css_to_blkcg(task_css(current, io_cgrp_id));

 if (!blkcg)
  goto out;
 blkg = blkg_lookup(blkcg, q);
 if (!blkg)
  goto out;
 if (!blkg_tryget(blkg))
  goto out;
 rcu_read_unlock();

 blkcg_maybe_throttle_blkg(blkg, use_memdelay);
 blkg_put(blkg);
 blk_put_queue(q);
 return;
out:
 rcu_read_unlock();
 blk_put_queue(q);
}
