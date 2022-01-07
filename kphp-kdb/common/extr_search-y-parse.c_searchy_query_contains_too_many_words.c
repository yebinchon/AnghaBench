
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;
typedef TYPE_1__ searchy_query_t ;


 int SEARCHY_MAX_QUERY_WORDS ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static void searchy_query_contains_too_many_words (searchy_query_t *Q) {
  snprintf (Q->error, sizeof (Q->error), "query contains too many words, SEARCHY_MAX_QUERY_WORDS is %d.", SEARCHY_MAX_QUERY_WORDS);
}
