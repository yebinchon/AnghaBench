
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_ARM64_TAGGED_ADDR_ABI ;
 scalar_t__ IS_ENABLED (int ) ;
 int TIF_TAGGED_ADDR ;
 int clear_thread_flag (int ) ;

__attribute__((used)) static void flush_tagged_addr_state(void)
{
 if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI))
  clear_thread_flag(TIF_TAGGED_ADDR);
}
