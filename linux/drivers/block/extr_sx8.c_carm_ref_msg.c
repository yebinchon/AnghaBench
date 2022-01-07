
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carm_host {void* msg_base; } ;


 unsigned int CARM_MSG_SIZE ;

__attribute__((used)) static inline void *carm_ref_msg(struct carm_host *host,
     unsigned int msg_idx)
{
 return host->msg_base + (msg_idx * CARM_MSG_SIZE);
}
