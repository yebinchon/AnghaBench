
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int Out; int status; } ;
typedef int nbw_iterator_t ;
struct TYPE_4__ {int auth_state; scalar_t__ packet_state; } ;
struct TYPE_3__ {int (* sql_flush_packet ) (struct connection*,int) ;int (* sql_becomes_ready ) (struct connection*) ;} ;


 TYPE_2__* SQLC_DATA (struct connection*) ;
 TYPE_1__* SQLC_FUNC (struct connection*) ;
 int conn_ready ;
 int fprintf (int ,char*) ;
 int nbit_setw (int *,int *) ;
 int nbit_write_out (int *,int*,int) ;
 int sql_auth_initdb ;
 int sql_auth_ok ;
 char* sql_database ;
 int stderr ;
 int strlen (char*) ;
 int stub1 (struct connection*) ;
 int stub2 (struct connection*,int) ;
 int verbosity ;
 scalar_t__ write_out (int *,...) ;

int sqlp_authorized (struct connection *c) {
  nbw_iterator_t it;
  unsigned temp = 0x00000000;
  int len = 0;
  char ptype = 2;

  if (!sql_database || !*sql_database) {
    SQLC_DATA(c)->auth_state = sql_auth_ok;
    c->status = conn_ready;
    SQLC_DATA(c)->packet_state = 0;
    if (verbosity > 1) {
      fprintf (stderr, "outcoming initdb successful\n");
    }
    SQLC_FUNC(c)->sql_becomes_ready (c);
    return 0;
  }

  nbit_setw (&it, &c->Out);
  write_out (&c->Out, &temp, 4);

  len += write_out (&c->Out, &ptype, 1);
  if (sql_database && *sql_database) {
    len += write_out (&c->Out, sql_database, strlen (sql_database));
  }

  nbit_write_out (&it, &len, 3);

  SQLC_FUNC(c)->sql_flush_packet (c, len);

  SQLC_DATA(c)->auth_state = sql_auth_initdb;
  return 0;
}
