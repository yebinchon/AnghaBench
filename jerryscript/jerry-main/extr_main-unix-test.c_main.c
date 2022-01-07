
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_value_t ;
typedef int jerry_char_t ;


 int JERRY_ERROR_COMMON ;
 int JERRY_INIT_EMPTY ;
 int JERRY_LOG_LEVEL_ERROR ;
 int JERRY_PARSE_NO_OPTS ;
 int JERRY_STANDALONE_EXIT_CODE_FAIL ;
 int JERRY_STANDALONE_EXIT_CODE_OK ;
 int jerry_cleanup () ;
 int jerry_create_error (int ,int *) ;
 int jerry_create_undefined () ;
 int jerry_init (int ) ;
 int jerry_parse (int *,int ,int const*,size_t,int ) ;
 scalar_t__ jerry_port_get_current_time () ;
 int jerry_port_log (int ,char*) ;
 int jerry_release_value (int ) ;
 int jerry_run (int ) ;
 scalar_t__ jerry_value_is_error (int ) ;
 int print_help (char*) ;
 int * read_file (char const*,size_t*) ;
 int srand (unsigned int) ;
 int strcmp (char*,char*) ;

int
main (int argc,
      char **argv)
{
  srand ((unsigned) jerry_port_get_current_time ());
  if (argc <= 1 || (argc == 2 && (!strcmp ("-h", argv[1]) || !strcmp ("--help", argv[1]))))
  {
    print_help (argv[0]);
    return JERRY_STANDALONE_EXIT_CODE_OK;
  }

  jerry_init (JERRY_INIT_EMPTY);
  jerry_value_t ret_value = jerry_create_undefined ();

  for (int i = 1; i < argc; i++)
  {
    const char *file_name = argv[i];
    size_t source_size;

    const jerry_char_t *source_p = read_file (file_name, &source_size);

    if (source_p == ((void*)0))
    {
      ret_value = jerry_create_error (JERRY_ERROR_COMMON, (jerry_char_t *) "");
      break;
    }
    else
    {
      ret_value = jerry_parse (((void*)0), 0, source_p, source_size, JERRY_PARSE_NO_OPTS);

      if (!jerry_value_is_error (ret_value))
      {
        jerry_value_t func_val = ret_value;
        ret_value = jerry_run (func_val);
        jerry_release_value (func_val);
      }
    }

    if (jerry_value_is_error (ret_value))
    {
      break;
    }

    jerry_release_value (ret_value);
    ret_value = jerry_create_undefined ();
  }

  int ret_code = JERRY_STANDALONE_EXIT_CODE_OK;

  if (jerry_value_is_error (ret_value))
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Unhandled exception: Script Error!\n");
    ret_code = JERRY_STANDALONE_EXIT_CODE_FAIL;
  }

  jerry_release_value (ret_value);
  jerry_cleanup ();

  return ret_code;
}
