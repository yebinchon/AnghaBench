
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int priv; } ;
struct device {int dummy; } ;
typedef enum fw_opt { ____Placeholder_fw_opt } fw_opt ;


 int EINVAL ;
 int ENOENT ;
 int FW_OPT_NO_WARN ;
 int _request_firmware_prepare (struct firmware**,char const*,struct device*,void*,size_t,int) ;
 int assign_fw (struct firmware*,struct device*,int) ;
 int dev_warn (struct device*,char*,char const*,int) ;
 int firmware_fallback_sysfs (struct firmware*,char const*,struct device*,int,int) ;
 int fw_abort_batch_reqs (struct firmware*) ;
 int * fw_decompress_xz ;
 int fw_get_filesystem_firmware (struct device*,int ,char*,int *) ;
 int release_firmware (struct firmware*) ;

__attribute__((used)) static int
_request_firmware(const struct firmware **firmware_p, const char *name,
    struct device *device, void *buf, size_t size,
    enum fw_opt opt_flags)
{
 struct firmware *fw = ((void*)0);
 int ret;

 if (!firmware_p)
  return -EINVAL;

 if (!name || name[0] == '\0') {
  ret = -EINVAL;
  goto out;
 }

 ret = _request_firmware_prepare(&fw, name, device, buf, size,
     opt_flags);
 if (ret <= 0)
  goto out;

 ret = fw_get_filesystem_firmware(device, fw->priv, "", ((void*)0));






 if (ret) {
  if (!(opt_flags & FW_OPT_NO_WARN))
   dev_warn(device,
     "Direct firmware load for %s failed with error %d\n",
     name, ret);
  ret = firmware_fallback_sysfs(fw, name, device, opt_flags, ret);
 } else
  ret = assign_fw(fw, device, opt_flags);

 out:
 if (ret < 0) {
  fw_abort_batch_reqs(fw);
  release_firmware(fw);
  fw = ((void*)0);
 }

 *firmware_p = fw;
 return ret;
}
