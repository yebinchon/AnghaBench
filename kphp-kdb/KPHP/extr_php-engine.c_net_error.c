
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int ans; } ;
typedef TYPE_2__ php_query_base_t ;
struct TYPE_10__ {TYPE_1__* func; int ans; } ;
typedef TYPE_3__ net_ansgen_t ;
struct TYPE_8__ {int (* free ) (TYPE_3__*) ;int (* error ) (TYPE_3__*,char const*) ;} ;


 int php_script ;
 int php_script_query_answered (int ) ;
 int stub1 (TYPE_3__*,char const*) ;
 int stub2 (TYPE_3__*) ;

void net_error (net_ansgen_t *ansgen, php_query_base_t *query, const char *err) {
  ansgen->func->error (ansgen, err);
  query->ans = ansgen->ans;
  ansgen->func->free (ansgen);
  php_script_query_answered (php_script);
}
