
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int process_info_t ;




 int fflush (int ) ;
 int fprintf (int ,char*,char const*,int,char const*,char const*,char*) ;
 scalar_t__ process_output_size (int *) ;
 int process_read_last_line (int *,char*,int) ;
 int stderr ;
 int strlen (char*) ;

void log_tap_result(int test_count,
                    const char* test,
                    int status,
                    process_info_t* process) {
  const char* result;
  const char* directive;
  char reason[1024];
  int reason_length;

  switch (status) {
  case 129:
    result = "ok";
    directive = "";
    break;
  case 128:
    result = "ok";
    directive = " # SKIP ";
    break;
  default:
    result = "not ok";
    directive = "";
  }

  if (status == 128 && process_output_size(process) > 0) {
    process_read_last_line(process, reason, sizeof reason);
    reason_length = strlen(reason);
    if (reason_length > 0 && reason[reason_length - 1] == '\n')
      reason[reason_length - 1] = '\0';
  } else {
    reason[0] = '\0';
  }

  fprintf(stderr, "%s %d - %s%s%s\n", result, test_count, test, directive, reason);
  fflush(stderr);
}
