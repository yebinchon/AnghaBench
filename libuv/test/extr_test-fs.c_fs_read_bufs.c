
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ base; } ;
typedef TYPE_1__ uv_buf_t ;
struct TYPE_12__ {scalar_t__ result; } ;


 int ASSERT (int) ;
 int O_RDONLY ;
 int UV_EINVAL ;
 TYPE_2__ close_req ;
 scalar_t__ memcmp (scalar_t__,scalar_t__,int) ;
 TYPE_2__ open_req1 ;
 TYPE_2__ read_req ;
 TYPE_1__ uv_buf_init (char*,int) ;
 scalar_t__ uv_fs_close (int *,TYPE_2__*,int,int *) ;
 scalar_t__ uv_fs_open (int *,TYPE_2__*,char*,int,int ,int *) ;
 int uv_fs_read (int *,TYPE_2__*,scalar_t__,TYPE_1__*,int,int,int *) ;
 int uv_fs_req_cleanup (TYPE_2__*) ;

__attribute__((used)) static void fs_read_bufs(int add_flags) {
  char scratch[768];
  uv_buf_t bufs[4];

  ASSERT(0 <= uv_fs_open(((void*)0), &open_req1,
                         "test/fixtures/lorem_ipsum.txt",
                         O_RDONLY | add_flags, 0, ((void*)0)));
  ASSERT(open_req1.result >= 0);
  uv_fs_req_cleanup(&open_req1);

  ASSERT(UV_EINVAL == uv_fs_read(((void*)0), &read_req, open_req1.result,
                                 ((void*)0), 0, 0, ((void*)0)));
  ASSERT(UV_EINVAL == uv_fs_read(((void*)0), &read_req, open_req1.result,
                                 ((void*)0), 1, 0, ((void*)0)));
  ASSERT(UV_EINVAL == uv_fs_read(((void*)0), &read_req, open_req1.result,
                                 bufs, 0, 0, ((void*)0)));

  bufs[0] = uv_buf_init(scratch + 0, 256);
  bufs[1] = uv_buf_init(scratch + 256, 256);
  bufs[2] = uv_buf_init(scratch + 512, 128);
  bufs[3] = uv_buf_init(scratch + 640, 128);

  ASSERT(446 == uv_fs_read(((void*)0),
                           &read_req,
                           open_req1.result,
                           bufs + 0,
                           2,
                           0,
                           ((void*)0)));
  ASSERT(read_req.result == 446);
  uv_fs_req_cleanup(&read_req);

  ASSERT(190 == uv_fs_read(((void*)0),
                           &read_req,
                           open_req1.result,
                           bufs + 2,
                           2,
                           256,
                           ((void*)0)));
  ASSERT(read_req.result == 190);
  uv_fs_req_cleanup(&read_req);

  ASSERT(0 == memcmp(bufs[1].base + 0, bufs[2].base, 128));
  ASSERT(0 == memcmp(bufs[1].base + 128, bufs[3].base, 190 - 128));

  ASSERT(0 == uv_fs_close(((void*)0), &close_req, open_req1.result, ((void*)0)));
  ASSERT(close_req.result == 0);
  uv_fs_req_cleanup(&close_req);
}
