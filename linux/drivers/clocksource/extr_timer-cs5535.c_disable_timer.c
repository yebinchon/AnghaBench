
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cs5535_mfgpt_timer {int dummy; } ;


 int MFGPT_REG_SETUP ;
 int MFGPT_SETUP_CMP1 ;
 int MFGPT_SETUP_CMP2 ;
 scalar_t__ MFGPT_SETUP_CNTEN ;
 int cs5535_mfgpt_write (struct cs5535_mfgpt_timer*,int ,int) ;

__attribute__((used)) static void disable_timer(struct cs5535_mfgpt_timer *timer)
{

 cs5535_mfgpt_write(timer, MFGPT_REG_SETUP,
   (uint16_t) ~MFGPT_SETUP_CNTEN | MFGPT_SETUP_CMP1 |
    MFGPT_SETUP_CMP2);
}
