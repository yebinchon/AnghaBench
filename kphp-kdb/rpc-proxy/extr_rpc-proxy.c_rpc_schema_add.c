
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_schema {scalar_t__ num; } ;


 scalar_t__ MAX_SCHEMAS ;
 int assert (int) ;
 struct rpc_schema** schemas ;
 scalar_t__ schemas_num ;

void rpc_schema_add (struct rpc_schema *E) {
  assert (schemas_num < MAX_SCHEMAS);
  E->num = schemas_num;
  schemas[schemas_num ++] = E;
}
