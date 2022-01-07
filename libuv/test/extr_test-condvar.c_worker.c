
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int posted_2; int (* wait_cond ) (TYPE_1__*,int *) ;int posted_1; int (* signal_cond ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ worker_config ;


 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static void worker(void* arg) {
  worker_config* c = arg;
  c->signal_cond(c, &c->posted_1);
  c->wait_cond(c, &c->posted_2);
}
