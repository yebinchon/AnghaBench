
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_request {int kref; } ;
struct drbd_plug_cb {struct drbd_request* most_recent_req; } ;


 int drbd_req_destroy ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void drbd_update_plug(struct drbd_plug_cb *plug, struct drbd_request *req)
{
 struct drbd_request *tmp = plug->most_recent_req;


 kref_get(&req->kref);
 plug->most_recent_req = req;
 if (tmp)
  kref_put(&tmp->kref, drbd_req_destroy);
}
