
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * phrases; } ;
typedef TYPE_1__ searchy_query_t ;


 int searchy_query_phrase_free (int ) ;

void searchy_query_free (searchy_query_t *Q) {
  searchy_query_phrase_free (Q->phrases[0]);
  searchy_query_phrase_free (Q->phrases[1]);
}
