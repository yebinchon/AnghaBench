
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volume_t ;
struct gather_data {long long req_id; unsigned char* filedata; int filedata_len; int content_type; struct gather_data* prev; struct gather_data* next; int q; int writing_thread; void* filename; void* key; scalar_t__ key_len; int * V; struct connection* c; } ;
struct connection {int query_start_time; } ;
typedef int pthread_attr_t ;


 int PTHREAD_CREATE_DETACHED ;
 int active_gathers ;
 struct gather_data* active_write_threads ;
 int create_inbound_query (struct gather_data*,struct connection*,double) ;
 int free_gather (struct gather_data*) ;
 int mytime () ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_attr_setstacksize (int *,int) ;
 int pthread_create (int *,int *,int ,void*) ;
 int rpc_create_inbound_query (struct gather_data*,struct connection*,double) ;
 scalar_t__ rpc_mode (struct gather_data*) ;
 int strcpy (void*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (struct gather_data*,struct connection*,double) ;
 void* tszmalloc (scalar_t__) ;
 int vkprintf (int,char*) ;
 int write_thread ;
 struct gather_data* zmalloc0 (int) ;

int create_write_thread (struct connection *c, long long req_id, volume_t *V, const char *key, const char *filename, unsigned char *filedata, int filedata_len, int content_type) {
  pthread_attr_t attr;
  pthread_attr_init (&attr);
  pthread_attr_setdetachstate (&attr, PTHREAD_CREATE_DETACHED);
  pthread_attr_setstacksize (&attr, 4 << 20);
  active_gathers++;
  struct gather_data *A = zmalloc0 (sizeof (struct gather_data));

  A->req_id = req_id;
  A->c = c;
  A->V = V;
  A->key_len = strlen (key);
  A->key = tszmalloc (A->key_len + 1);
  strcpy (A->key, key);
  if (filename) {
    A->filename = tszmalloc (strlen (filename) + 1);
    strcpy (A->filename, filename);
  }

  A->filedata = filedata;
  A->filedata_len = filedata_len;
  A->content_type = content_type;

  int r = pthread_create (&A->writing_thread, &attr, write_thread, (void *) A);

  if (r) {
    vkprintf (1, "create_write_thread: pthread_create failed. %m\n");
    pthread_attr_destroy (&attr);
    free_gather (A);
    return -1;
  }

  pthread_attr_destroy (&attr);

  c->query_start_time = mytime ();

  A->q = (rpc_mode (A) ? rpc_create_inbound_query : create_inbound_query) (A, c, 600.0);

  A->next = active_write_threads;
  if (active_write_threads) {
    active_write_threads->prev = A;
  }
  active_write_threads = A;
  return 0;
}
