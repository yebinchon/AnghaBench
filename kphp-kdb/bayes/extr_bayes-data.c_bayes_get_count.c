
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int spam; int ham; } ;
typedef TYPE_1__ pair ;
typedef int ll ;
struct TYPE_6__ {int cnt; } ;
typedef TYPE_2__ bayes ;


 int SPAM ;
 TYPE_1__* qhtbl_get (int *,int ) ;

int bayes_get_count (bayes *b, ll word, int type) {
  pair *tmp = qhtbl_get (&b->cnt, word);
  if (tmp == ((void*)0))
    return 0;
  if (type == SPAM) {
    return tmp->spam;
  } else {
    return tmp->ham;
  }
}
