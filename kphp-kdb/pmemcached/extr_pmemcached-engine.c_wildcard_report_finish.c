
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Out; } ;


 int free (int) ;
 int memcpy (int,char*,int) ;
 scalar_t__ metafile_mode ;
 int return_one_key_flags_len (TYPE_1__*,char const*,int,int,int,int) ;
 int sprintf (char*,char*,int) ;
 int wildcard_add_value (char const*,int,int,int) ;
 int wildcard_arrays_allocated ;
 TYPE_1__* wildcard_connection ;
 int wildcard_ptr ;
 int wildcard_total_data_sent ;
 int wildcard_total_keys_sent ;
 char wildcard_type ;
 int write_out (int *,char*,int) ;

void wildcard_report_finish (const char *key, int key_len) {
  if (wildcard_type == '#') {
    if (metafile_mode) {
      memcpy (wildcard_ptr + wildcard_total_data_sent, "}", 1);
      wildcard_total_data_sent ++;
    } else {
      wildcard_total_data_sent ++;
      write_out (&wildcard_connection->Out, "}\r\n", 3);
    }
    if (metafile_mode) {
      static char s[12];
      sprintf (s, "%09d", wildcard_total_keys_sent);
      memcpy (wildcard_ptr + 2, s, 9);
      return_one_key_flags_len (wildcard_connection, key, key_len, wildcard_ptr, wildcard_total_data_sent, 1);
      wildcard_add_value (key, key_len - 1, wildcard_ptr, wildcard_total_data_sent);
      free (wildcard_ptr);
      wildcard_arrays_allocated --;
    } else {
      static char s[12];
      sprintf (s, "%09d", wildcard_total_data_sent);
      memcpy (wildcard_ptr, s, 9);
      sprintf (s, "%09d", wildcard_total_keys_sent);
      memcpy (wildcard_ptr + 13, s, 9);
    }
  }
}
