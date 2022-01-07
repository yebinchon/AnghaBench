
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_better_rate(unsigned long req, unsigned long best,
      unsigned long new)
{
 return (req <= new && new < best) || (best < req && best < new);
}
