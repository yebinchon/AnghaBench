
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MV_PORT_MASK ;

__attribute__((used)) static inline unsigned int mv_hardport_from_port(unsigned int port)
{
 return port & MV_PORT_MASK;
}
