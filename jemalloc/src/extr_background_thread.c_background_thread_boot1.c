
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_4__ {int mtx; int state; int cond; } ;
typedef TYPE_1__ background_thread_info_t ;


 int CACHELINE ;
 int DEFAULT_NUM_BACKGROUND_THREAD ;
 int MAX_BACKGROUND_THREAD_LIMIT ;
 int WITNESS_RANK_BACKGROUND_THREAD ;
 int WITNESS_RANK_BACKGROUND_THREAD_GLOBAL ;
 int assert (int) ;
 int b0get () ;
 int background_thread_enabled_set (int *,int ) ;
 TYPE_1__* background_thread_info ;
 int background_thread_info_init (int *,TYPE_1__*) ;
 int background_thread_lock ;
 int background_thread_stopped ;
 scalar_t__ base_alloc (int *,int ,int,int ) ;
 int have_background_thread ;
 int malloc_mutex_address_ordered ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_rank_exclusive ;
 int malloc_mutex_unlock (int *,int *) ;
 unsigned int max_background_threads ;
 scalar_t__ narenas_total_get () ;
 int opt_background_thread ;
 int opt_max_background_threads ;
 scalar_t__ pthread_cond_init (int *,int *) ;

bool
background_thread_boot1(tsdn_t *tsdn) {
 return 0;
}
