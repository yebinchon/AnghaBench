
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int op; } ;
typedef TYPE_1__ query_node_t ;


 int MAX_QUERY_NODES ;
 TYPE_1__* QV ;
 int Q_nodes ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static query_node_t *new_query_node (int op) {
  query_node_t *X = QV + Q_nodes;
  if (Q_nodes >= MAX_QUERY_NODES) {
    return 0;
  }
  Q_nodes++;
  memset (X, 0, sizeof (*X));
  X->op = op;
  return X;
}
