
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FEATURES ;
 char* msp_default_features ;
 char* prom_getenv (int ) ;

__attribute__((used)) static char *get_features(void)
{
 char *feature = prom_getenv(FEATURES);

 if (feature == ((void*)0)) {

  feature = msp_default_features;
 }

 return feature;
}
