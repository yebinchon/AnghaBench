
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_client_id {scalar_t__ gid; scalar_t__ handle; } ;



__attribute__((used)) static bool rbd_cid_equal(const struct rbd_client_id *lhs,
     const struct rbd_client_id *rhs)
{
 return lhs->gid == rhs->gid && lhs->handle == rhs->handle;
}
