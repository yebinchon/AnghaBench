
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_st {int reg_status; int wait_reg_completion; } ;


 int complete (int *) ;

__attribute__((used)) static void st_reg_completion_cb(void *priv_data, int data)
{
 struct ti_st *lhst = priv_data;


 lhst->reg_status = data;

 complete(&lhst->wait_reg_completion);
}
