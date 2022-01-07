
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_HYBRID_FPREGS ;
 int test_thread_flag (int ) ;

__attribute__((used)) static inline bool hybrid_fprs(void)
{
 return test_thread_flag(TIF_HYBRID_FPREGS);
}
