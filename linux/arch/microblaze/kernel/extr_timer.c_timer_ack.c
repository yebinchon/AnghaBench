
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TCSR0 ;
 int read_fn (scalar_t__) ;
 scalar_t__ timer_baseaddr ;
 int write_fn (int ,scalar_t__) ;

__attribute__((used)) static inline void timer_ack(void)
{
 write_fn(read_fn(timer_baseaddr + TCSR0), timer_baseaddr + TCSR0);
}
