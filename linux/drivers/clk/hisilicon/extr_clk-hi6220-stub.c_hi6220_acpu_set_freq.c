
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* src; void* obj; int cmd; int type; } ;
union hi6220_mbox_data {TYPE_1__ msg; } ;
struct hi6220_stub_clk {int mbox; int dfs_map; } ;


 int ACPU_DFS_FREQ_REQ ;
 int HI6220_MBOX_CMD_SET ;
 int HI6220_MBOX_FREQ ;
 void* HI6220_MBOX_OBJ_AP ;
 int mbox_send_message (int ,union hi6220_mbox_data*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int hi6220_acpu_set_freq(struct hi6220_stub_clk *stub_clk,
    unsigned int freq)
{
 union hi6220_mbox_data data;


 regmap_write(stub_clk->dfs_map, ACPU_DFS_FREQ_REQ, freq);


 data.msg.type = HI6220_MBOX_FREQ;
 data.msg.cmd = HI6220_MBOX_CMD_SET;
 data.msg.obj = HI6220_MBOX_OBJ_AP;
 data.msg.src = HI6220_MBOX_OBJ_AP;

 mbox_send_message(stub_clk->mbox, &data);
 return 0;
}
