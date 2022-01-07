
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MST_MSCWR2 ;
 int MST_MSCWR2_AC97_SPKROFF ;
 int mst_audio_suspend_mask ;

__attribute__((used)) static void mst_audio_suspend(void *priv)
{
 mst_audio_suspend_mask = MST_MSCWR2;
 MST_MSCWR2 |= MST_MSCWR2_AC97_SPKROFF;
}
