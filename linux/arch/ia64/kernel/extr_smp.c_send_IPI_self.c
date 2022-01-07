
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_IPI_single (int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static inline void
send_IPI_self (int op)
{
 send_IPI_single(smp_processor_id(), op);
}
