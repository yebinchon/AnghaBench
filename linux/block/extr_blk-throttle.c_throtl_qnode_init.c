
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_qnode {struct throtl_grp* tg; int bios; int node; } ;
struct throtl_grp {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int bio_list_init (int *) ;

__attribute__((used)) static void throtl_qnode_init(struct throtl_qnode *qn, struct throtl_grp *tg)
{
 INIT_LIST_HEAD(&qn->node);
 bio_list_init(&qn->bios);
 qn->tg = tg;
}
