
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_SVE ;
 int clear_thread_flag (int ) ;
 int sve_user_disable () ;
 int system_supports_sve () ;

__attribute__((used)) static inline void sve_user_discard(void)
{
 if (!system_supports_sve())
  return;

 clear_thread_flag(TIF_SVE);
 sve_user_disable();
}
