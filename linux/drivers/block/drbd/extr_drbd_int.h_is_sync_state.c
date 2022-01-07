
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drbd_conns { ____Placeholder_drbd_conns } drbd_conns ;


 scalar_t__ is_sync_source_state (int) ;
 scalar_t__ is_sync_target_state (int) ;

__attribute__((used)) static inline bool is_sync_state(enum drbd_conns connection_state)
{
 return is_sync_source_state(connection_state) ||
  is_sync_target_state(connection_state);
}
