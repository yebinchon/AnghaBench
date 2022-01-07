
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dec {scalar_t__ in_pos; scalar_t__ in_limit; } ;



__attribute__((used)) static inline char rc_limit_exceeded(const struct rc_dec *rc)
{
 return rc->in_pos > rc->in_limit;
}
