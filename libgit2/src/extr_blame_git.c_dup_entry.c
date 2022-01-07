
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ score; struct TYPE_6__* next; struct TYPE_6__* prev; int suspect; } ;
typedef TYPE_1__ git_blame__entry ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int origin_decref (int ) ;
 int origin_incref (int ) ;

__attribute__((used)) static void dup_entry(git_blame__entry *dst, git_blame__entry *src)
{
 git_blame__entry *p, *n;

 p = dst->prev;
 n = dst->next;
 origin_incref(src->suspect);
 origin_decref(dst->suspect);
 memcpy(dst, src, sizeof(*src));
 dst->prev = p;
 dst->next = n;
 dst->score = 0;
}
