
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;


 int MST_MSCWR2 ;
 int MST_MSCWR2_AC97_SPKROFF ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static void mst_audio_shutdown(struct snd_pcm_substream *substream, void *priv)
{
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  MST_MSCWR2 |= MST_MSCWR2_AC97_SPKROFF;
}
