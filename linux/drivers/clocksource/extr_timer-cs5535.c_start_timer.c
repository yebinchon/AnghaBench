
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cs5535_mfgpt_timer {int dummy; } ;


 int MFGPT_REG_CMP2 ;
 int MFGPT_REG_COUNTER ;
 int MFGPT_REG_SETUP ;
 int MFGPT_SETUP_CMP2 ;
 int MFGPT_SETUP_CNTEN ;
 int cs5535_mfgpt_write (struct cs5535_mfgpt_timer*,int ,int) ;

__attribute__((used)) static void start_timer(struct cs5535_mfgpt_timer *timer, uint16_t delta)
{
 cs5535_mfgpt_write(timer, MFGPT_REG_CMP2, delta);
 cs5535_mfgpt_write(timer, MFGPT_REG_COUNTER, 0);

 cs5535_mfgpt_write(timer, MFGPT_REG_SETUP,
   MFGPT_SETUP_CNTEN | MFGPT_SETUP_CMP2);
}
