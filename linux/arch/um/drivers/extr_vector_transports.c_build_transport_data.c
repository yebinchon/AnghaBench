
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_private {int parsed; } ;


 int TRANS_BESS ;
 int TRANS_BESS_LEN ;
 int TRANS_GRE ;
 int TRANS_GRE_LEN ;
 int TRANS_HYBRID ;
 int TRANS_HYBRID_LEN ;
 int TRANS_L2TPV3 ;
 int TRANS_L2TPV3_LEN ;
 int TRANS_RAW ;
 int TRANS_RAW_LEN ;
 int TRANS_TAP ;
 int TRANS_TAP_LEN ;
 int build_bess_transport_data (struct vector_private*) ;
 int build_gre_transport_data (struct vector_private*) ;
 int build_hybrid_transport_data (struct vector_private*) ;
 int build_l2tpv3_transport_data (struct vector_private*) ;
 int build_raw_transport_data (struct vector_private*) ;
 int build_tap_transport_data (struct vector_private*) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 char* uml_vector_fetch_arg (int ,char*) ;

int build_transport_data(struct vector_private *vp)
{
 char *transport = uml_vector_fetch_arg(vp->parsed, "transport");

 if (strncmp(transport, TRANS_GRE, TRANS_GRE_LEN) == 0)
  return build_gre_transport_data(vp);
 if (strncmp(transport, TRANS_L2TPV3, TRANS_L2TPV3_LEN) == 0)
  return build_l2tpv3_transport_data(vp);
 if (strncmp(transport, TRANS_RAW, TRANS_RAW_LEN) == 0)
  return build_raw_transport_data(vp);
 if (strncmp(transport, TRANS_TAP, TRANS_TAP_LEN) == 0)
  return build_tap_transport_data(vp);
 if (strncmp(transport, TRANS_HYBRID, TRANS_HYBRID_LEN) == 0)
  return build_hybrid_transport_data(vp);
 if (strncmp(transport, TRANS_BESS, TRANS_BESS_LEN) == 0)
  return build_bess_transport_data(vp);
 return 0;
}
