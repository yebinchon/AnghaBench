
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ oe_objno; } ;
struct rbd_obj_request {TYPE_2__ ex; TYPE_1__* img_request; } ;
struct rbd_device {int object_map_lock; } ;
struct ceph_osd_request {int r_result; int r_num_ops; } ;
struct ceph_osd_data {scalar_t__ type; int * pages; } ;
struct TYPE_3__ {struct rbd_device* rbd_dev; } ;


 scalar_t__ CEPH_OSD_DATA_TYPE_PAGES ;
 void* OBJECT_EXISTS ;
 void* OBJECT_EXISTS_CLEAN ;
 void* __rbd_object_map_get (struct rbd_device*,scalar_t__) ;
 int __rbd_object_map_set (struct rbd_device*,scalar_t__,void*) ;
 scalar_t__ ceph_decode_64 (void**) ;
 void* ceph_decode_8 (void**) ;
 int cls ;
 struct ceph_osd_data* osd_req_op_data (struct ceph_osd_request*,int,int ,int ) ;
 void* page_address (int ) ;
 int rbd_assert (int) ;
 int request_data ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int rbd_object_map_update_finish(struct rbd_obj_request *obj_req,
     struct ceph_osd_request *osd_req)
{
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
 struct ceph_osd_data *osd_data;
 u64 objno;
 u8 state, new_state, current_state;
 bool has_current_state;
 void *p;

 if (osd_req->r_result)
  return osd_req->r_result;




 if (osd_req->r_num_ops == 1)
  return 0;




 rbd_assert(osd_req->r_num_ops == 2);
 osd_data = osd_req_op_data(osd_req, 1, cls, request_data);
 rbd_assert(osd_data->type == CEPH_OSD_DATA_TYPE_PAGES);

 p = page_address(osd_data->pages[0]);
 objno = ceph_decode_64(&p);
 rbd_assert(objno == obj_req->ex.oe_objno);
 rbd_assert(ceph_decode_64(&p) == objno + 1);
 new_state = ceph_decode_8(&p);
 has_current_state = ceph_decode_8(&p);
 if (has_current_state)
  current_state = ceph_decode_8(&p);

 spin_lock(&rbd_dev->object_map_lock);
 state = __rbd_object_map_get(rbd_dev, objno);
 if (!has_current_state || current_state == state ||
     (current_state == OBJECT_EXISTS && state == OBJECT_EXISTS_CLEAN))
  __rbd_object_map_set(rbd_dev, objno, new_state);
 spin_unlock(&rbd_dev->object_map_lock);

 return 0;
}
