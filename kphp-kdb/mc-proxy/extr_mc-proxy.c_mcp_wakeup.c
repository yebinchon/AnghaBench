
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_data {int query_type; } ;
struct connection {int Out; int queries_ok; int status; scalar_t__ pending_queries; scalar_t__ generation; } ;


 struct mcs_data* MCS_DATA (struct connection*) ;
 int clear_connection_timeout (struct connection*) ;
 int conn_expect_query ;
 scalar_t__ conn_generation ;
 int mcs_pad_response (struct connection*) ;







 int write_out (int *,char*,int) ;

int mcp_wakeup (struct connection *c) {
  struct mcs_data *D = MCS_DATA(c);

  c->generation = ++conn_generation;
  c->pending_queries = 0;
  c->status = conn_expect_query;

  switch (D->query_type & 0x2fff) {
  case 131:
    write_out (&c->Out, "END\r\n", 5);
    break;
  case 130:
  case 133:
  case 132:
    if (!c->queries_ok) {
      write_out (&c->Out, "NOT_FOUND\r\n", 11);
    }
    break;
  case 134:
  case 129:
  case 128:
    if (!c->queries_ok) {
      write_out (&c->Out, "NOT_STORED\r\n", 12);
    }
    break;
  }
  clear_connection_timeout (c);
  mcs_pad_response (c);
  return 0;
}
