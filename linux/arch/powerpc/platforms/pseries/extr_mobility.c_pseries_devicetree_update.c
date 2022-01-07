
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef int __be32 ;




 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NODE_ACTION_MASK ;
 int NODE_COUNT_MASK ;
 int PRRN_SCOPE ;
 int RTAS_DATA_BUF_SIZE ;
 int RTAS_UNKNOWN_SERVICE ;

 int add_dt_node (int ,int ) ;
 int be32_to_cpu (int ) ;
 int cond_resched () ;
 int delete_dt_node (int ) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int mobility_rtas_call (int,char*,int ) ;
 int prrn_update_node (int ) ;
 int rtas_token (char*) ;
 int update_dt_node (int ,int ) ;

int pseries_devicetree_update(s32 scope)
{
 char *rtas_buf;
 __be32 *data;
 int update_nodes_token;
 int rc;

 update_nodes_token = rtas_token("ibm,update-nodes");
 if (update_nodes_token == RTAS_UNKNOWN_SERVICE)
  return -EINVAL;

 rtas_buf = kzalloc(RTAS_DATA_BUF_SIZE, GFP_KERNEL);
 if (!rtas_buf)
  return -ENOMEM;

 do {
  rc = mobility_rtas_call(update_nodes_token, rtas_buf, scope);
  if (rc && rc != 1)
   break;

  data = (__be32 *)rtas_buf + 4;
  while (be32_to_cpu(*data) & NODE_ACTION_MASK) {
   int i;
   u32 action = be32_to_cpu(*data) & NODE_ACTION_MASK;
   u32 node_count = be32_to_cpu(*data) & NODE_COUNT_MASK;

   data++;

   for (i = 0; i < node_count; i++) {
    __be32 phandle = *data++;
    __be32 drc_index;

    switch (action) {
    case 129:
     delete_dt_node(phandle);
     break;
    case 128:
     update_dt_node(phandle, scope);

     if (scope == PRRN_SCOPE)
      prrn_update_node(phandle);

     break;
    case 130:
     drc_index = *data++;
     add_dt_node(phandle, drc_index);
     break;
    }

    cond_resched();
   }
  }

  cond_resched();
 } while (rc == 1);

 kfree(rtas_buf);
 return rc;
}
