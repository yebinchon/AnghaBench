
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct virtqueue {struct virtio_uml_vq_info* priv; } ;
struct virtio_uml_vq_info {int kick_fd; } ;
typedef int n ;


 int EINTR ;
 int WARN (int,char*,int) ;
 int os_write_file (int ,int const*,int) ;

__attribute__((used)) static bool vu_notify(struct virtqueue *vq)
{
 struct virtio_uml_vq_info *info = vq->priv;
 const uint64_t n = 1;
 int rc;

 do {
  rc = os_write_file(info->kick_fd, &n, sizeof(n));
 } while (rc == -EINTR);
 return !WARN(rc != sizeof(n), "write returned %d\n", rc);
}
