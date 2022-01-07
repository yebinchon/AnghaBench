
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mq_rq_state { ____Placeholder_mq_rq_state } mq_rq_state ;


 unsigned int ARRAY_SIZE (char const**) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 char const** blk_mq_rq_state_name_array ;

__attribute__((used)) static const char *blk_mq_rq_state_name(enum mq_rq_state rq_state)
{
 if (WARN_ON_ONCE((unsigned int)rq_state >=
    ARRAY_SIZE(blk_mq_rq_state_name_array)))
  return "(?)";
 return blk_mq_rq_state_name_array[rq_state];
}
