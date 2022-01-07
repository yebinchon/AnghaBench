
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int dh_check_params_length(unsigned int p_len)
{
 return (p_len < 1536) ? -EINVAL : 0;
}
