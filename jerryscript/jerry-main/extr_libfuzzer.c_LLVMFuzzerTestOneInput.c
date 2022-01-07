
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int jerry_value_t ;
typedef int jerry_size_t ;
typedef int jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int JERRY_PARSE_NO_OPTS ;
 int jerry_cleanup () ;
 int jerry_init (int ) ;
 scalar_t__ jerry_is_valid_utf8_string (int *,int ) ;
 int jerry_parse (int *,int ,int *,size_t,int ) ;
 int jerry_release_value (int ) ;
 int jerry_run (int ) ;
 int jerry_run_all_enqueued_jobs () ;
 int jerry_value_is_error (int ) ;
 int srand (int ) ;

int LLVMFuzzerTestOneInput (const uint8_t *data, size_t size)
{
  srand (0);
  jerry_init (JERRY_INIT_EMPTY);

  if (jerry_is_valid_utf8_string ((jerry_char_t *) data, (jerry_size_t) size))
  {
    jerry_value_t parse_value = jerry_parse (((void*)0), 0, (jerry_char_t *) data, size, JERRY_PARSE_NO_OPTS);

    if (!jerry_value_is_error (parse_value))
    {
      jerry_value_t run_value = jerry_run (parse_value);
      jerry_release_value (run_value);

      jerry_value_t run_queue_value = jerry_run_all_enqueued_jobs ();
      jerry_release_value (run_queue_value);
    }

    jerry_release_value (parse_value);
  }

  jerry_cleanup ();

  return 0;
}
