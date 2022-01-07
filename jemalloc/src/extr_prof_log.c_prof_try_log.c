
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_12__ {int thr_uid; int vec; } ;
typedef TYPE_3__ prof_tdata_t ;
struct TYPE_13__ {TYPE_2__* tdata; TYPE_1__* gctx; } ;
typedef TYPE_4__ prof_tctx_t ;
typedef int prof_bt_t ;
struct TYPE_14__ {size_t usize; struct TYPE_14__* next; void* free_time_ns; void* alloc_time_ns; void* free_bt_ind; void* alloc_bt_ind; void* free_thr_ind; void* alloc_thr_ind; } ;
typedef TYPE_5__ prof_alloc_node_t ;
typedef int nstime_t ;
struct TYPE_11__ {char* thread_name; int thr_uid; int lock; } ;
struct TYPE_10__ {int bt; } ;


 int NSTIME_ZERO_INITIALIZER ;
 int PROF_CKH_MINITEMS ;
 int TSDN_NULL ;
 int arena_get (int ,int ,int) ;
 int bt_init (int *,int ) ;
 int ckh_new (int *,int *,int ,int ,int ) ;
 scalar_t__ iallocztm (int ,size_t,int ,int,int *,int,int ,int) ;
 TYPE_5__* log_alloc_first ;
 TYPE_5__* log_alloc_last ;
 int log_bt_node_set ;
 int log_mtx ;
 int log_tables_initialized ;
 int log_thr_node_set ;
 int malloc_mutex_assert_owner (int ,int ) ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 void* nstime_ns (int *) ;
 int nstime_update (int *) ;
 int prof_alloc_time_get (int ,void const*) ;
 int prof_backtrace (int *,int *) ;
 int prof_bt_node_hash ;
 int prof_bt_node_keycomp ;
 void* prof_log_bt_index (int *,int *) ;
 void* prof_log_thr_index (int *,int ,char const*) ;
 scalar_t__ prof_logging_state ;
 scalar_t__ prof_logging_state_started ;
 TYPE_3__* prof_tdata_get (int *,int) ;
 int prof_thr_node_hash ;
 int prof_thr_node_keycomp ;
 char* prof_thread_name_get (int *) ;
 int sz_size2index (size_t) ;
 int tsd_tsdn (int *) ;

void
prof_try_log(tsd_t *tsd, const void *ptr, size_t usize, prof_tctx_t *tctx) {
 malloc_mutex_assert_owner(tsd_tsdn(tsd), tctx->tdata->lock);

 prof_tdata_t *cons_tdata = prof_tdata_get(tsd, 0);
 if (cons_tdata == ((void*)0)) {





  return;
 }

 malloc_mutex_lock(tsd_tsdn(tsd), &log_mtx);

 if (prof_logging_state != prof_logging_state_started) {
  goto label_done;
 }

 if (!log_tables_initialized) {
  bool err1 = ckh_new(tsd, &log_bt_node_set, PROF_CKH_MINITEMS,
    prof_bt_node_hash, prof_bt_node_keycomp);
  bool err2 = ckh_new(tsd, &log_thr_node_set, PROF_CKH_MINITEMS,
    prof_thr_node_hash, prof_thr_node_keycomp);
  if (err1 || err2) {
   goto label_done;
  }
  log_tables_initialized = 1;
 }

 nstime_t alloc_time = prof_alloc_time_get(tsd_tsdn(tsd), ptr);
 nstime_t free_time = NSTIME_ZERO_INITIALIZER;
 nstime_update(&free_time);

 size_t sz = sizeof(prof_alloc_node_t);
 prof_alloc_node_t *new_node = (prof_alloc_node_t *)
     iallocztm(tsd_tsdn(tsd), sz, sz_size2index(sz), 0, ((void*)0), 1,
     arena_get(TSDN_NULL, 0, 1), 1);

 const char *prod_thr_name = (tctx->tdata->thread_name == ((void*)0))?
            "" : tctx->tdata->thread_name;
 const char *cons_thr_name = prof_thread_name_get(tsd);

 prof_bt_t bt;

 bt_init(&bt, cons_tdata->vec);
 prof_backtrace(tsd, &bt);
 prof_bt_t *cons_bt = &bt;


 prof_bt_t *prod_bt = &tctx->gctx->bt;

 new_node->next = ((void*)0);
 new_node->alloc_thr_ind = prof_log_thr_index(tsd, tctx->tdata->thr_uid,
          prod_thr_name);
 new_node->free_thr_ind = prof_log_thr_index(tsd, cons_tdata->thr_uid,
         cons_thr_name);
 new_node->alloc_bt_ind = prof_log_bt_index(tsd, prod_bt);
 new_node->free_bt_ind = prof_log_bt_index(tsd, cons_bt);
 new_node->alloc_time_ns = nstime_ns(&alloc_time);
 new_node->free_time_ns = nstime_ns(&free_time);
 new_node->usize = usize;

 if (log_alloc_first == ((void*)0)) {
  log_alloc_first = new_node;
  log_alloc_last = new_node;
 } else {
  log_alloc_last->next = new_node;
  log_alloc_last = new_node;
 }

label_done:
 malloc_mutex_unlock(tsd_tsdn(tsd), &log_mtx);
}
