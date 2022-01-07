
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int In; int last_response_time; int fd; } ;
typedef int qres_t ;
typedef int nb_iterator_t ;





 int SKIP_ALL_BYTES ;
 int assert (int) ;
 int free (char*) ;
 int * get_qres (long long,int ) ;
 int got_result (long long) ;
 char* malloc (int) ;
 int nbit_clear (int *) ;
 int nbit_read_in (int *,...) ;
 int nbit_set (int *,int *) ;
 int precise_now ;
 int qr_ans ;
 int qres_error (int *) ;
 int qres_save (int *,char*,int) ;
 int vkprintf (int,char*,int ,int,int) ;

int rpcc_execute (struct connection *c, int op, int len) {
  vkprintf (1, "rpcc_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);

  int head[5];
  qres_t *qres;

  nb_iterator_t Iter;

  char *data;
  int data_len;

  c->last_response_time = precise_now;

  switch (op) {
    case 129:
    case 128:
      assert (len % (int)sizeof (int) == 0);
      len /= (int)sizeof (int);
      assert (len >= 6);

      nbit_set (&Iter, &c->In);
      assert (nbit_read_in (&Iter, head, sizeof (int) * 5) == sizeof (int) * 5);

      long long id = *(long long *)(&head[3]);

      qres = get_qres (id, qr_ans);
      if (qres == ((void*)0)) {
        got_result (id);
        break;
      }

      if (op == 129) {
        qres_error (qres);
        break;
      }

      data_len = len - 5 - 1;
      data = malloc (sizeof (int) * (size_t)data_len);
      assert (nbit_read_in (&Iter, data, data_len * (int)sizeof (int)) == data_len * (int)sizeof (int));

      nbit_clear (&Iter);

      if (qres_save (qres, data, data_len * (int)sizeof (int)) < 0) {
        free (data);
      }

      break;
    case 130:
      break;
  }

  return SKIP_ALL_BYTES;
}
