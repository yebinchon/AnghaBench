
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ucb1x00_reset { ____Placeholder_ucb1x00_reset } ucb1x00_reset ;


 int RST_UCB1X00 ;
 int UCB_RST_PROBE_FAIL ;
 int UCB_RST_REMOVE ;
 int UCB_RST_SUSPEND ;
 int assabet_codec_reset (int ,int) ;

__attribute__((used)) static void assabet_ucb1x00_reset(enum ucb1x00_reset state)
{
 int set = state == UCB_RST_REMOVE || state == UCB_RST_SUSPEND ||
  state == UCB_RST_PROBE_FAIL;
 assabet_codec_reset(RST_UCB1X00, set);
}
