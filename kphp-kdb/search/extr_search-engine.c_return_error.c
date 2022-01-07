
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_buffer {int (* output_int ) (struct value_buffer*,int ) ;} ;
struct connection {int dummy; } ;


 int Q_raw ;
 scalar_t__ return_empty_record_on_error ;
 int return_one_key (struct connection*,char const*,int ,int ) ;
 int sprintf (int ,char*,char*) ;
 int stats_buff ;
 int stub1 (struct value_buffer*,int ) ;
 int value_buffer_init (struct value_buffer*,struct connection*,char const*,int,int ,int) ;
 int value_buffer_return (struct value_buffer*) ;
 int vkprintf (int,char*,char*) ;

__attribute__((used)) static int return_error (struct connection *c, const char *key, int len, int dog_len, char *q_end) {
  vkprintf (1, "ERROR near '%.256s'\n", q_end);
  if (return_empty_record_on_error) {
    struct value_buffer b;
    if (!value_buffer_init (&b, c, key - dog_len, len + dog_len, Q_raw, 64)) {
      return 0;
    }
    b.output_int (&b, 0);
    return value_buffer_return (&b);
  } else {
    return return_one_key (c, key - dog_len, stats_buff, sprintf (stats_buff, "ERROR near '%.256s'\n", q_end));
  }
}
