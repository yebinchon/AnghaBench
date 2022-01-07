
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecard_request {int * complete; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int completion ;
 int ecard_mutex ;
 struct ecard_request* ecard_req ;
 int ecard_wait ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void ecard_call(struct ecard_request *req)
{
 DECLARE_COMPLETION_ONSTACK(completion);

 req->complete = &completion;

 mutex_lock(&ecard_mutex);
 ecard_req = req;
 wake_up(&ecard_wait);




 wait_for_completion(&completion);
 mutex_unlock(&ecard_mutex);
}
