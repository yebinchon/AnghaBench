
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_gemini {int dummy; } ;


 int EPROBE_DEFER ;
 struct sata_gemini* ERR_PTR (int ) ;
 struct sata_gemini* sg_singleton ;

struct sata_gemini *gemini_sata_bridge_get(void)
{
 if (sg_singleton)
  return sg_singleton;
 return ERR_PTR(-EPROBE_DEFER);
}
