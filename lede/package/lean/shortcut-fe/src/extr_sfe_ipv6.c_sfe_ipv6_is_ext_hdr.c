
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ SFE_IPV6_EXT_HDR_AH ;
 scalar_t__ SFE_IPV6_EXT_HDR_DST ;
 scalar_t__ SFE_IPV6_EXT_HDR_FRAG ;
 scalar_t__ SFE_IPV6_EXT_HDR_HOP ;
 scalar_t__ SFE_IPV6_EXT_HDR_MH ;
 scalar_t__ SFE_IPV6_EXT_HDR_ROUTING ;

__attribute__((used)) static inline bool sfe_ipv6_is_ext_hdr(u8 hdr)
{
 return (hdr == SFE_IPV6_EXT_HDR_HOP) ||
  (hdr == SFE_IPV6_EXT_HDR_ROUTING) ||
  (hdr == SFE_IPV6_EXT_HDR_FRAG) ||
  (hdr == SFE_IPV6_EXT_HDR_AH) ||
  (hdr == SFE_IPV6_EXT_HDR_DST) ||
  (hdr == SFE_IPV6_EXT_HDR_MH);
}
