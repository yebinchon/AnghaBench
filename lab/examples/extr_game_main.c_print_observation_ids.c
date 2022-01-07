
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* observation ) (void*,int const,int *) ;} ;
typedef int EnvCApi_Observation ;
typedef TYPE_1__ EnvCApi ;


 int fputs (char*,int ) ;
 int print_observation (int *) ;
 int printf (char*,char const*) ;
 int stdout ;
 int stub1 (void*,int const,int *) ;

__attribute__((used)) static void print_observation_ids(EnvCApi* env_c_api, void* context,
                                  const char* observation_names[],
                                  const int ob_ids[], int ob_count) {
  for (int ob = 0; ob < ob_count; ++ob) {
    if (ob_ids[ob] < 0) {
      continue;
    }
    EnvCApi_Observation observation;
    env_c_api->observation(context, ob_ids[ob], &observation);
    printf("observation \"%s\" - ", observation_names[ob]);
    print_observation(&observation);
    fputs("\n", stdout);
  }
}
