
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_IDU_READ_MODE ;
 int CMD_IDU_SET_MODE ;
 int __mcip_cmd_data (int ,unsigned int,unsigned int) ;
 unsigned int __mcip_cmd_read (int ,unsigned int) ;

__attribute__((used)) static void idu_set_mode(unsigned int cmn_irq, bool set_lvl, unsigned int lvl,
    bool set_distr, unsigned int distr)
{
 union {
  unsigned int word;
  struct {
   unsigned int distr:2, pad:2, lvl:1, pad2:27;
  };
 } data;

 data.word = __mcip_cmd_read(CMD_IDU_READ_MODE, cmn_irq);
 if (set_distr)
  data.distr = distr;
 if (set_lvl)
  data.lvl = lvl;
 __mcip_cmd_data(CMD_IDU_SET_MODE, cmn_irq, data.word);
}
