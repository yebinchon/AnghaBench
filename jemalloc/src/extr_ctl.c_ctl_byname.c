
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
typedef int ctl_node_t ;
struct TYPE_3__ {int (* ctl ) (int *,size_t*,size_t,void*,size_t*,void*,size_t) ;} ;
typedef TYPE_1__ ctl_named_node_t ;


 int CTL_MAX_DEPTH ;
 int EAGAIN ;
 int ENOENT ;
 scalar_t__ ctl_init (int *) ;
 int ctl_initialized ;
 int ctl_lookup (int ,char const*,int const**,size_t*,size_t*) ;
 TYPE_1__* ctl_named_node (int const*) ;
 int stub1 (int *,size_t*,size_t,void*,size_t*,void*,size_t) ;
 int tsd_tsdn (int *) ;

int
ctl_byname(tsd_t *tsd, const char *name, void *oldp, size_t *oldlenp,
    void *newp, size_t newlen) {
 int ret;
 size_t depth;
 ctl_node_t const *nodes[CTL_MAX_DEPTH];
 size_t mib[CTL_MAX_DEPTH];
 const ctl_named_node_t *node;

 if (!ctl_initialized && ctl_init(tsd)) {
  ret = EAGAIN;
  goto label_return;
 }

 depth = CTL_MAX_DEPTH;
 ret = ctl_lookup(tsd_tsdn(tsd), name, nodes, mib, &depth);
 if (ret != 0) {
  goto label_return;
 }

 node = ctl_named_node(nodes[depth-1]);
 if (node != ((void*)0) && node->ctl) {
  ret = node->ctl(tsd, mib, depth, oldp, oldlenp, newp, newlen);
 } else {

  ret = ENOENT;
 }

label_return:
 return(ret);
}
