
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecard_request {int complete; int (* fn ) (struct ecard_request*) ;} ;


 int complete (int ) ;
 scalar_t__ ecard_init_mm () ;
 int * ecard_req ;
 int ecard_wait ;
 int panic (char*) ;
 int stub1 (struct ecard_request*) ;
 int wait_event_interruptible (int ,int ) ;
 struct ecard_request* xchg (int **,int *) ;

__attribute__((used)) static int
ecard_task(void * unused)
{






 if (ecard_init_mm())
  panic("kecardd: unable to alloc mm\n");

 while (1) {
  struct ecard_request *req;

  wait_event_interruptible(ecard_wait, ecard_req != ((void*)0));

  req = xchg(&ecard_req, ((void*)0));
  if (req != ((void*)0)) {
   req->fn(req);
   complete(req->complete);
  }
 }
}
