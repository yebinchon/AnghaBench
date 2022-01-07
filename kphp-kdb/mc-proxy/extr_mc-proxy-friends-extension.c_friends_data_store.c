
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct keep_mc_store {int list_id; int num; int magic; } ;
struct TYPE_5__ {scalar_t__ start; } ;
struct connection {TYPE_1__ Out; int In; TYPE_1__* Tmp; } ;


 int FRIENDS_STORE_MAGIC ;
 int MAX_USERLIST_NUM ;
 int advance_skip_read_ptr (int *,int) ;
 int advance_write_ptr (TYPE_1__*,int) ;
 TYPE_1__* alloc_head_buffer () ;
 int assert (TYPE_1__*) ;
 int flush_output (struct connection*) ;
 int fprintf (int ,char*,int,char const*,int,int,int,int ) ;
 int free_tmp_buffers (struct connection*) ;
 int np_news_parse_list (char*,int ,int,int *,int) ;
 int sscanf (char const*,char*,int*) ;
 int stderr ;
 char* userlist ;
 scalar_t__ verbosity ;
 int write_out (TYPE_1__*,char*,int) ;

int friends_data_store (struct connection *c, int op, const char *key, int len, int flags, int expire, int bytes)
{
  int user_id = 0;
  struct keep_mc_store *Data = 0;



  if (verbosity > 0) {
    fprintf (stderr, "mc_store: op=%d, key=\"%s\", flags=%d, expire=%d, bytes=%d, noreply=%d\n", op, key, flags, expire, bytes, 0);
  }

  if (bytes >= 0 && bytes < 1048576) {
    if (sscanf (key, "userlist%d", &user_id) == 1 && user_id < 0) {
      if (!c->Tmp) {
        c->Tmp = alloc_head_buffer();
        assert (c->Tmp);
      }
      Data = (struct keep_mc_store *) c->Tmp->start;
      Data->magic = FRIENDS_STORE_MAGIC;
      Data->list_id = user_id;
      Data->num = np_news_parse_list (userlist, MAX_USERLIST_NUM, 1, &c->In, bytes);
      advance_write_ptr (c->Tmp, sizeof (struct keep_mc_store));
      if (Data->num > 0 && user_id < 0) {
        write_out (c->Tmp, userlist, Data->num * 4);
      }
    } else {
      advance_skip_read_ptr (&c->In, bytes);
    }
  } else {
    advance_skip_read_ptr (&c->In, bytes);
  }

  if (!Data || Data->num <= 0 || user_id >= 0) {
    write_out (&c->Out, "NOT_STORED\r\n", 12);
    flush_output (c);
    free_tmp_buffers (c);
  } else {
    write_out (&c->Out, "STORED\r\n", 8);
    flush_output (c);
  }

  return bytes;
}
