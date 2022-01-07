
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int php_worker ;
struct TYPE_5__ {TYPE_3__* ans; } ;
struct TYPE_6__ {TYPE_1__ base; int max_len; int min_len; int buf; } ;
typedef TYPE_2__ php_query_http_load_post_t ;
struct TYPE_7__ {scalar_t__ loaded_bytes; } ;
typedef TYPE_3__ php_query_http_load_post_answer_t ;


 int php_script ;
 int php_script_query_answered (int ) ;
 int php_script_query_readed (int ) ;
 scalar_t__ php_worker_http_load_post_impl (int *,int ,int ,int ) ;
 int php_worker_terminate (int *,int,char*) ;

void php_worker_http_load_post (php_worker *worker, php_query_http_load_post_t *query) {
  php_script_query_readed (php_script);

  static php_query_http_load_post_answer_t res;
  res.loaded_bytes = php_worker_http_load_post_impl (worker, query->buf, query->min_len, query->max_len);
  query->base.ans = &res;

  php_script_query_answered (php_script);

  if (res.loaded_bytes < 0) {
    php_worker_terminate (worker, 1, "error during loading big post data");
  }
}
