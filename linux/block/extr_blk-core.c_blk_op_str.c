
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char**) ;
 char** blk_op_name ;

inline const char *blk_op_str(unsigned int op)
{
 const char *op_str = "UNKNOWN";

 if (op < ARRAY_SIZE(blk_op_name) && blk_op_name[op])
  op_str = blk_op_name[op];

 return op_str;
}
