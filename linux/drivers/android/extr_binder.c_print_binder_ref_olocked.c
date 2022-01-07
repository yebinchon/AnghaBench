
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {int weak; int strong; int desc; int debug_id; } ;
struct binder_ref {TYPE_2__* node; int death; TYPE_1__ data; } ;
struct TYPE_5__ {int debug_id; scalar_t__ proc; } ;


 int binder_node_lock (TYPE_2__*) ;
 int binder_node_unlock (TYPE_2__*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void print_binder_ref_olocked(struct seq_file *m,
         struct binder_ref *ref)
{
 binder_node_lock(ref->node);
 seq_printf(m, "  ref %d: desc %d %snode %d s %d w %d d %pK\n",
     ref->data.debug_id, ref->data.desc,
     ref->node->proc ? "" : "dead ",
     ref->node->debug_id, ref->data.strong,
     ref->data.weak, ref->death);
 binder_node_unlock(ref->node);
}
