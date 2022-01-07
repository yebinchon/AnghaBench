
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_ADDR32 ;
 int __set_personality_ia32 () ;
 int __set_personality_x32 () ;
 int set_thread_flag (int ) ;

void set_personality_ia32(bool x32)
{

 set_thread_flag(TIF_ADDR32);

 if (x32)
  __set_personality_x32();
 else
  __set_personality_ia32();
}
