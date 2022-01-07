
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uiOpenTypeFeatures ;


 int EXIT_FAILURE ;
 size_t curFeature ;
 int exit (int ) ;
 int ** features ;
 int fprintf (int ,char*) ;
 size_t nFeatures ;
 int stderr ;
 int * uiNewOpenTypeFeatures () ;
 int uiOpenTypeFeaturesAdd (int *,char const,char const,char const,char const,int ) ;

__attribute__((used)) static uiOpenTypeFeatures *addFeature(const char tag[4], uint32_t value)
{
 uiOpenTypeFeatures *otf;

 if (curFeature >= nFeatures) {
  fprintf(stderr, "TODO (also TODO is there a panic function?)\n");
  exit(EXIT_FAILURE);
 }
 otf = uiNewOpenTypeFeatures();
 uiOpenTypeFeaturesAdd(otf, tag[0], tag[1], tag[2], tag[3], value);
 features[curFeature] = otf;
 curFeature++;
 return otf;
}
