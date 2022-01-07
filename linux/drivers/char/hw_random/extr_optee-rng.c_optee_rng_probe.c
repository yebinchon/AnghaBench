
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tee_ioctl_open_session_arg {scalar_t__ ret; int session; scalar_t__ num_params; int clnt_login; int uuid; } ;
struct TYPE_4__ {int b; } ;
struct TYPE_5__ {TYPE_1__ uuid; } ;
struct tee_client_device {TYPE_2__ id; } ;
struct device {int dummy; } ;
typedef int sess_arg ;
struct TYPE_6__ {int ctx; int session_id; struct device* dev; int optee_rng; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int TEE_IOCTL_LOGIN_PUBLIC ;
 int TEE_IOCTL_UUID_LEN ;
 int dev_err (struct device*,char*,int) ;
 int get_optee_rng_info (struct device*) ;
 int hwrng_register (int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct tee_ioctl_open_session_arg*,int ,int) ;
 int optee_ctx_match ;
 TYPE_3__ pvt_data ;
 int tee_client_close_context (int ) ;
 int tee_client_close_session (int ,int ) ;
 int tee_client_open_context (int *,int ,int *,int *) ;
 int tee_client_open_session (int ,struct tee_ioctl_open_session_arg*,int *) ;
 struct tee_client_device* to_tee_client_device (struct device*) ;

__attribute__((used)) static int optee_rng_probe(struct device *dev)
{
 struct tee_client_device *rng_device = to_tee_client_device(dev);
 int ret = 0, err = -ENODEV;
 struct tee_ioctl_open_session_arg sess_arg;

 memset(&sess_arg, 0, sizeof(sess_arg));


 pvt_data.ctx = tee_client_open_context(((void*)0), optee_ctx_match, ((void*)0),
            ((void*)0));
 if (IS_ERR(pvt_data.ctx))
  return -ENODEV;


 memcpy(sess_arg.uuid, rng_device->id.uuid.b, TEE_IOCTL_UUID_LEN);
 sess_arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
 sess_arg.num_params = 0;

 ret = tee_client_open_session(pvt_data.ctx, &sess_arg, ((void*)0));
 if ((ret < 0) || (sess_arg.ret != 0)) {
  dev_err(dev, "tee_client_open_session failed, err: %x\n",
   sess_arg.ret);
  err = -EINVAL;
  goto out_ctx;
 }
 pvt_data.session_id = sess_arg.session;

 err = get_optee_rng_info(dev);
 if (err)
  goto out_sess;

 err = hwrng_register(&pvt_data.optee_rng);
 if (err) {
  dev_err(dev, "hwrng registration failed (%d)\n", err);
  goto out_sess;
 }

 pvt_data.dev = dev;

 return 0;

out_sess:
 tee_client_close_session(pvt_data.ctx, pvt_data.session_id);
out_ctx:
 tee_client_close_context(pvt_data.ctx);

 return err;
}
