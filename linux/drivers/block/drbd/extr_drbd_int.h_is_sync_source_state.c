
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drbd_conns { ____Placeholder_drbd_conns } drbd_conns ;


 int C_PAUSED_SYNC_S ;
 int C_SYNC_SOURCE ;

__attribute__((used)) static inline bool is_sync_source_state(enum drbd_conns connection_state)
{
 return connection_state == C_SYNC_SOURCE ||
  connection_state == C_PAUSED_SYNC_S;
}
