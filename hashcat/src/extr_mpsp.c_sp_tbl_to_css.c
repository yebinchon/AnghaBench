
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int key; } ;
typedef TYPE_1__ hcstat_table_t ;
struct TYPE_9__ {int cs_len; int* cs_buf; } ;
typedef TYPE_2__ cs_t ;


 int CHARSIZ ;
 int SP_MARKOV_CNT ;
 int SP_PW_MAX ;
 int SP_ROOT_CNT ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void sp_tbl_to_css (hcstat_table_t *root_table_buf, hcstat_table_t *markov_table_buf, cs_t *root_css_buf, cs_t *markov_css_buf, u32 threshold, u32 uniq_tbls[SP_PW_MAX][CHARSIZ])
{
  memset (root_css_buf, 0, SP_PW_MAX * sizeof (cs_t));
  memset (markov_css_buf, 0, SP_PW_MAX * CHARSIZ * sizeof (cs_t));





  for (u32 i = 0; i < SP_ROOT_CNT; i++)
  {
    u32 pw_pos = i / CHARSIZ;

    cs_t *cs = &root_css_buf[pw_pos];

    if (cs->cs_len == threshold) continue;

    u32 key = root_table_buf[i].key;

    if (uniq_tbls[pw_pos][key] == 0) continue;

    cs->cs_buf[cs->cs_len] = key;

    cs->cs_len++;
  }





  for (u32 i = 0; i < SP_MARKOV_CNT; i++)
  {
    u32 c = i / CHARSIZ;

    cs_t *cs = &markov_css_buf[c];

    if (cs->cs_len == threshold) continue;

    u32 pw_pos = c / CHARSIZ;

    u32 key = markov_table_buf[i].key;

    if ((pw_pos + 1) < SP_PW_MAX) if (uniq_tbls[pw_pos + 1][key] == 0) continue;

    cs->cs_buf[cs->cs_len] = key;

    cs->cs_len++;
  }
}
