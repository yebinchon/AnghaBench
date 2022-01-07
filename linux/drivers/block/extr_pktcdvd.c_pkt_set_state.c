
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_data {int state; scalar_t__ sector; int id; } ;
typedef enum packet_data_state { ____Placeholder_packet_data_state } packet_data_state ;


 int pd ;
 int pkt_dbg (int,int ,char*,int ,unsigned long long,char const*,char const*) ;

__attribute__((used)) static inline void pkt_set_state(struct packet_data *pkt, enum packet_data_state state)
{
 pkt->state = state;
}
