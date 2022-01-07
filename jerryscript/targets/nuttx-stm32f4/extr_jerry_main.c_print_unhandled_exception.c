
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int msg ;
typedef int jerry_value_t ;
typedef int jerry_size_t ;
typedef char jerry_char_t ;


 scalar_t__ JERRY_ERROR_SYNTAX ;
 int JERRY_FEATURE_ERROR_MESSAGES ;
 int JERRY_LOG_LEVEL_ERROR ;
 scalar_t__ SYNTAX_ERROR_CONTEXT_SIZE ;
 int assert (int) ;
 scalar_t__ jerry_get_error_type (int ) ;
 int jerry_get_utf8_string_size (int ) ;
 int jerry_get_value_from_error (int ,int) ;
 scalar_t__ jerry_is_feature_enabled (int ) ;
 int jerry_port_log (int ,char*,...) ;
 int jerry_release_value (int ) ;
 int jerry_string_to_utf8_char_buffer (int ,char*,int) ;
 int jerry_value_is_error (int ) ;
 int jerry_value_to_string (int ) ;
 int memcpy (char*,char const*,int) ;
 char* read_file (char*,size_t*) ;
 scalar_t__ str_to_uint (char*,char**) ;

__attribute__((used)) static void
print_unhandled_exception (jerry_value_t error_value)
{
  assert (jerry_value_is_error (error_value));

  error_value = jerry_get_value_from_error (error_value, 0);
  jerry_value_t err_str_val = jerry_value_to_string (error_value);
  jerry_size_t err_str_size = jerry_get_utf8_string_size (err_str_val);
  jerry_char_t err_str_buf[256];

  jerry_release_value (error_value);

  if (err_str_size >= 256)
  {
    const char msg[] = "[Error message too long]";
    err_str_size = sizeof (msg) / sizeof (char) - 1;
    memcpy (err_str_buf, msg, err_str_size);
  }
  else
  {
    jerry_size_t sz = jerry_string_to_utf8_char_buffer (err_str_val, err_str_buf, err_str_size);
    assert (sz == err_str_size);
    err_str_buf[err_str_size] = 0;

    if (jerry_is_feature_enabled (JERRY_FEATURE_ERROR_MESSAGES)
        && jerry_get_error_type (error_value) == JERRY_ERROR_SYNTAX)
    {
      jerry_char_t *string_end_p = err_str_buf + sz;
      uint32_t err_line = 0;
      uint32_t err_col = 0;
      char *path_str_p = ((void*)0);
      char *path_str_end_p = ((void*)0);


      for (jerry_char_t *current_p = err_str_buf; current_p < string_end_p; current_p++)
      {
        if (*current_p == '[')
        {
          current_p++;

          if (*current_p == '<')
          {
            break;
          }

          path_str_p = (char *) current_p;
          while (current_p < string_end_p && *current_p != ':')
          {
            current_p++;
          }

          path_str_end_p = (char *) current_p++;

          err_line = str_to_uint ((char *) current_p, (char **) &current_p);

          current_p++;

          err_col = str_to_uint ((char *) current_p, ((void*)0));
          break;
        }
      }

      if (err_line != 0 && err_col != 0)
      {
        uint32_t curr_line = 1;

        bool is_printing_context = 0;
        uint32_t pos = 0;


        *path_str_end_p = '\0';

        size_t source_size;
        const jerry_char_t *source_p = read_file (path_str_p, &source_size);


        *path_str_end_p = ':';


        while (source_p[pos] != '\0')
        {
          if (source_p[pos] == '\n')
          {
            curr_line++;
          }

          if (err_line < SYNTAX_ERROR_CONTEXT_SIZE
              || (err_line >= curr_line
                  && (err_line - curr_line) <= SYNTAX_ERROR_CONTEXT_SIZE))
          {

            is_printing_context = 1;
          }

          if (curr_line > err_line)
          {
            break;
          }

          if (is_printing_context)
          {
            jerry_port_log (JERRY_LOG_LEVEL_ERROR, "%c", source_p[pos]);
          }

          pos++;
        }

        jerry_port_log (JERRY_LOG_LEVEL_ERROR, "\n");

        while (--err_col)
        {
          jerry_port_log (JERRY_LOG_LEVEL_ERROR, "~");
        }

        jerry_port_log (JERRY_LOG_LEVEL_ERROR, "^\n");
      }
    }
  }

  jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Script Error: %s\n", err_str_buf);
  jerry_release_value (err_str_val);
}
