
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct papr_scm_priv {TYPE_1__* pdev; int metadata_size; } ;
struct nvdimm_bus_descriptor {int dummy; } ;
struct nvdimm {int dummy; } ;
struct nd_cmd_get_config_size {int max_xfer; int config_size; int status; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;



 int dev_dbg (int *,char*,int) ;
 struct papr_scm_priv* nvdimm_provider_data (struct nvdimm*) ;
 int papr_scm_meta_get (struct papr_scm_priv*,void*) ;
 int papr_scm_meta_set (struct papr_scm_priv*,void*) ;

int papr_scm_ndctl(struct nvdimm_bus_descriptor *nd_desc, struct nvdimm *nvdimm,
  unsigned int cmd, void *buf, unsigned int buf_len, int *cmd_rc)
{
 struct nd_cmd_get_config_size *get_size_hdr;
 struct papr_scm_priv *p;


 if (!nvdimm)
  return -EINVAL;

 p = nvdimm_provider_data(nvdimm);

 switch (cmd) {
 case 129:
  get_size_hdr = buf;

  get_size_hdr->status = 0;
  get_size_hdr->max_xfer = 8;
  get_size_hdr->config_size = p->metadata_size;
  *cmd_rc = 0;
  break;

 case 130:
  *cmd_rc = papr_scm_meta_get(p, buf);
  break;

 case 128:
  *cmd_rc = papr_scm_meta_set(p, buf);
  break;

 default:
  return -EINVAL;
 }

 dev_dbg(&p->pdev->dev, "returned with cmd_rc = %d\n", *cmd_rc);

 return 0;
}
