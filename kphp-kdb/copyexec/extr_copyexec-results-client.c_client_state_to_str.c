
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum client_state { ____Placeholder_client_state } client_state ;







char *client_state_to_str (enum client_state s) {
  switch (s) {
    case 128: return "startup";
    case 129: return "handshake_sent";
    case 130: return "handshake_received";
    case 131: return "data_sent";
    default: return "unknown";
  }
}
