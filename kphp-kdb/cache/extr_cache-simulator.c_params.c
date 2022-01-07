
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_file_size; int download_speed; int disk_size; } ;


 int PRINT_PARAM_I32 (int ) ;
 int PRINT_PARAM_I64 (int ) ;
 int PRINT_PARAM_STR (int ) ;
 int amortization_counters_initialization_string ;
 int delay_between_priority_lists_requests ;
 int fflush (int ) ;
 int fprintf (int ,char*,int ,int ) ;
 int human_readable_size (int ) ;
 int init_using_greedy_strategy ;
 int optimization ;
 TYPE_1__ simulation_params ;
 int stderr ;

__attribute__((used)) static void params (void) {
  fprintf (stderr, "disk_size\t%lld(%s)\n", simulation_params.disk_size, human_readable_size (simulation_params.disk_size));
  fprintf (stderr, "download_speed\t%lld(%s/sec)\n", simulation_params.download_speed, human_readable_size (simulation_params.download_speed));
  PRINT_PARAM_I64(delay_between_priority_lists_requests);
  fprintf (stderr, "default_file_size\t%lld(%s)\n", simulation_params.default_file_size, human_readable_size (simulation_params.default_file_size));
  PRINT_PARAM_I32(init_using_greedy_strategy);
  PRINT_PARAM_STR(amortization_counters_initialization_string);
  PRINT_PARAM_I32(optimization);
  fflush (stderr);
}
