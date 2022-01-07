
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dmlab_act_continuous (void*,double const*) ;
 int dmlab_act_discrete (void*,int const*) ;

__attribute__((used)) static void dmlab_act(void* context, const int act_d[], const double act_c[]) {
  dmlab_act_discrete(context, act_d);
  dmlab_act_continuous(context, act_c);
}
