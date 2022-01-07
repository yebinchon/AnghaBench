
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sm_sendq {int dummy; } ;
typedef TYPE_1__* sm_sendq_t ;
struct TYPE_4__ {int recv_fd; char* begin; char* head; char* tail; void* value; } ;


 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;

sm_sendq_t sm_sendq_new(int recv_fd, void *value, const char *data,
    size_t length) {
  sm_sendq_t ret = (sm_sendq_t)malloc(sizeof(struct sm_sendq));
  memset(ret, 0, sizeof(struct sm_sendq));
  ret->recv_fd = recv_fd;
  ret->value = value;
  ret->begin = (char *)malloc(length);
  memcpy(ret->begin, data, length);
  ret->head = ret->begin;
  ret->tail = ret->begin + length;
  return ret;
}
