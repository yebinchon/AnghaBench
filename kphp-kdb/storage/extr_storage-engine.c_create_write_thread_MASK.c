#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  volume_t ;
struct gather_data {long long req_id; unsigned char* filedata; int filedata_len; int content_type; struct gather_data* prev; struct gather_data* next; int /*<<< orphan*/  q; int /*<<< orphan*/  writing_thread; void* filename; void* key; scalar_t__ key_len; int /*<<< orphan*/ * V; struct connection* c; } ;
struct connection {int /*<<< orphan*/  query_start_time; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  active_gathers ; 
 struct gather_data* active_write_threads ; 
 int /*<<< orphan*/  FUNC0 (struct gather_data*,struct connection*,double) ; 
 int /*<<< orphan*/  FUNC1 (struct gather_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct gather_data*,struct connection*,double) ; 
 scalar_t__ FUNC9 (struct gather_data*) ; 
 int /*<<< orphan*/  FUNC10 (void*,char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct gather_data*,struct connection*,double) ; 
 void* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  write_thread ; 
 struct gather_data* FUNC15 (int) ; 

int FUNC16 (struct connection *c, long long req_id, volume_t *V, const char *key, const char *filename, unsigned char *filedata, int filedata_len, int content_type) {
  pthread_attr_t attr;
  FUNC4 (&attr);
  FUNC5 (&attr, PTHREAD_CREATE_DETACHED);
  FUNC6 (&attr, 4 << 20);
  active_gathers++;
  struct gather_data *A = FUNC15 (sizeof (struct gather_data));

  A->req_id = req_id;
  A->c = c;
  A->V = V;
  A->key_len = FUNC11 (key);
  A->key = FUNC13 (A->key_len + 1);
  FUNC10 (A->key, key);
  if (filename) {
    A->filename = FUNC13 (FUNC11 (filename) + 1);
    FUNC10 (A->filename, filename);
  }

  A->filedata = filedata;
  A->filedata_len = filedata_len;
  A->content_type = content_type;

  int r = FUNC7 (&A->writing_thread, &attr, write_thread, (void *) A);

  if (r) {
    FUNC14 (1, "create_write_thread: pthread_create failed. %m\n");
    FUNC3 (&attr);
    FUNC1 (A);
    return -1;
  }

  FUNC3 (&attr);

  c->query_start_time = FUNC2 ();

  A->q = (FUNC9 (A) ? rpc_create_inbound_query : create_inbound_query) (A, c, 600.0);

  A->next = active_write_threads;
  if (active_write_threads) {
    active_write_threads->prev = A;
  }
  active_write_threads = A;
  return 0;
}