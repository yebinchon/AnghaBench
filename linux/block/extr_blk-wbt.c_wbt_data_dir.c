
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int READ ;
 int const REQ_OP_READ ;
 int WRITE ;
 scalar_t__ op_is_write (int const) ;
 int req_op (struct request const*) ;

__attribute__((used)) static int wbt_data_dir(const struct request *rq)
{
 const int op = req_op(rq);

 if (op == REQ_OP_READ)
  return READ;
 else if (op_is_write(op))
  return WRITE;


 return -1;
}
