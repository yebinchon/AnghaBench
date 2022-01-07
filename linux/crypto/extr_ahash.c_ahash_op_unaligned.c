
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int ahash_op_unaligned_done ;
 int ahash_restore_req (struct ahash_request*,int) ;
 int ahash_save_req (struct ahash_request*,int ) ;

__attribute__((used)) static int ahash_op_unaligned(struct ahash_request *req,
         int (*op)(struct ahash_request *))
{
 int err;

 err = ahash_save_req(req, ahash_op_unaligned_done);
 if (err)
  return err;

 err = op(req);
 if (err == -EINPROGRESS || err == -EBUSY)
  return err;

 ahash_restore_req(req, err);

 return err;
}
