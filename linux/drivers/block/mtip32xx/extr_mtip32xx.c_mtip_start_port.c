
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtip_port {int dummy; } ;


 int mtip_enable_engine (struct mtip_port*,int) ;
 int mtip_enable_fis (struct mtip_port*,int) ;

__attribute__((used)) static inline void mtip_start_port(struct mtip_port *port)
{

 mtip_enable_fis(port, 1);


 mtip_enable_engine(port, 1);
}
