
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int flags; int Out; } ;
typedef int nbw_iterator_t ;


 int C_WANTWR ;
 int nbit_setw (int *,int *) ;
 int nbit_write_out (int *,int*,int) ;
 int sprintf (char*,char*,int) ;
 int sqls_flush_packet (struct connection*,int) ;
 scalar_t__ write_out (int *,...) ;

int send_error_packet (struct connection *c, int error_no,
                       int sql_state, const char *message, int msg_len,
                       int sequence_number) {
  nbw_iterator_t it;
  char buff[16];

  int res = 0;

  nbit_setw (&it, &c->Out);
  sequence_number <<= 24;
  write_out (&c->Out, &sequence_number, 4);

  res += write_out (&c->Out, "\xff", 1);
  res += write_out (&c->Out, &error_no, 2);
  sprintf (buff, "#%05d", sql_state);
  res += write_out (&c->Out, buff, 6);
  res += write_out (&c->Out, message, msg_len);

  nbit_write_out (&it, &res, 3);

  sqls_flush_packet (c, res);
  c->flags |= C_WANTWR;

  return res + 4;
}
