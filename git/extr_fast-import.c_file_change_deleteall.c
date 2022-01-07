
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* versions; int tree; } ;
struct branch {scalar_t__ num_notes; TYPE_2__ branch_tree; } ;
struct TYPE_3__ {int oid; } ;


 int load_tree (TYPE_2__*) ;
 int oidclr (int *) ;
 int release_tree_content_recursive (int ) ;

__attribute__((used)) static void file_change_deleteall(struct branch *b)
{
 release_tree_content_recursive(b->branch_tree.tree);
 oidclr(&b->branch_tree.versions[0].oid);
 oidclr(&b->branch_tree.versions[1].oid);
 load_tree(&b->branch_tree);
 b->num_notes = 0;
}
