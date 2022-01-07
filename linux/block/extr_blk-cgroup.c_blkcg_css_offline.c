
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct blkcg {int dummy; } ;


 int blkcg_cgwb_put (struct blkcg*) ;
 struct blkcg* css_to_blkcg (struct cgroup_subsys_state*) ;
 int wb_blkcg_offline (struct blkcg*) ;

__attribute__((used)) static void blkcg_css_offline(struct cgroup_subsys_state *css)
{
 struct blkcg *blkcg = css_to_blkcg(css);


 wb_blkcg_offline(blkcg);


 blkcg_cgwb_put(blkcg);
}
