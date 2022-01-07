
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts_data {int header_size; scalar_t__ data_size; int query_flags; } ;
struct connection {int In; } ;


 struct hts_data* HTS_DATA (struct connection*) ;
 int QF_ERROR ;
 scalar_t__ advance_skip_read_ptr (int *,int) ;
 int assert (int) ;
 int fprintf (int ,char*,int,int) ;




 int netw_queries ;
 int netw_update_queries ;
 int stderr ;
 scalar_t__ verbosity ;

int hts_default_execute (struct connection *c, int op) {
  struct hts_data *D = HTS_DATA(c);

  if (verbosity > 0) {
    fprintf (stderr, "http_server: op=%d, header_size=%d\n", op, D->header_size);
  }

  if (op != 131) {
    netw_queries++;
    if (op != 130) {
      netw_update_queries++;
    }
  }

  switch (op) {

    case 131:
      break;

    case 130:
    case 128:
    case 129:

    default:
      D->query_flags |= QF_ERROR;
      break;
  }

  assert (advance_skip_read_ptr (&c->In, D->header_size) == D->header_size);
  return D->data_size >= 0 ? -413 : -501;

}
