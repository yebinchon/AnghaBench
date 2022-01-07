
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATUS_DIR ;
 int STATUS_DMA ;
 int STATUS_READY ;

__attribute__((used)) static bool is_ready_state(int status)
{
 int state = status & (STATUS_READY | STATUS_DIR | STATUS_DMA);
 return state == STATUS_READY;
}
