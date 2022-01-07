
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int common; int ofs_delta; int multi_ack_detailed; int multi_ack; int include_tag; int side_band_64k; int side_band; int delete_refs; int thin_pack; } ;
typedef TYPE_1__ transport_smart_caps ;
typedef int git_vector ;
struct TYPE_6__ {char* capabilities; } ;
typedef TYPE_2__ git_pkt_ref ;


 int GIT_CAP_DELETE_REFS ;
 int GIT_CAP_INCLUDE_TAG ;
 int GIT_CAP_MULTI_ACK ;
 int GIT_CAP_MULTI_ACK_DETAILED ;
 int GIT_CAP_OFS_DELTA ;
 int GIT_CAP_SIDE_BAND ;
 int GIT_CAP_SIDE_BAND_64K ;
 int GIT_CAP_SYMREF ;
 int GIT_CAP_THIN_PACK ;
 int GIT_ENOTFOUND ;
 int append_symref (char const**,int *,char const*) ;
 int git__prefixcmp (char const*,int ) ;
 scalar_t__ git_smart__ofs_delta_enabled ;
 char* strchr (char const*,char) ;
 int strlen (int ) ;

int git_smart__detect_caps(git_pkt_ref *pkt, transport_smart_caps *caps, git_vector *symrefs)
{
 const char *ptr;


 if (pkt == ((void*)0) || pkt->capabilities == ((void*)0))
  return GIT_ENOTFOUND;

 ptr = pkt->capabilities;
 while (ptr != ((void*)0) && *ptr != '\0') {
  if (*ptr == ' ')
   ptr++;

  if (git_smart__ofs_delta_enabled && !git__prefixcmp(ptr, GIT_CAP_OFS_DELTA)) {
   caps->common = caps->ofs_delta = 1;
   ptr += strlen(GIT_CAP_OFS_DELTA);
   continue;
  }


  if (!git__prefixcmp(ptr, GIT_CAP_MULTI_ACK_DETAILED)) {
   caps->common = caps->multi_ack_detailed = 1;
   ptr += strlen(GIT_CAP_MULTI_ACK_DETAILED);
   continue;
  }

  if (!git__prefixcmp(ptr, GIT_CAP_MULTI_ACK)) {
   caps->common = caps->multi_ack = 1;
   ptr += strlen(GIT_CAP_MULTI_ACK);
   continue;
  }

  if (!git__prefixcmp(ptr, GIT_CAP_INCLUDE_TAG)) {
   caps->common = caps->include_tag = 1;
   ptr += strlen(GIT_CAP_INCLUDE_TAG);
   continue;
  }


  if (!git__prefixcmp(ptr, GIT_CAP_SIDE_BAND_64K)) {
   caps->common = caps->side_band_64k = 1;
   ptr += strlen(GIT_CAP_SIDE_BAND_64K);
   continue;
  }

  if (!git__prefixcmp(ptr, GIT_CAP_SIDE_BAND)) {
   caps->common = caps->side_band = 1;
   ptr += strlen(GIT_CAP_SIDE_BAND);
   continue;
  }

  if (!git__prefixcmp(ptr, GIT_CAP_DELETE_REFS)) {
   caps->common = caps->delete_refs = 1;
   ptr += strlen(GIT_CAP_DELETE_REFS);
   continue;
  }

  if (!git__prefixcmp(ptr, GIT_CAP_THIN_PACK)) {
   caps->common = caps->thin_pack = 1;
   ptr += strlen(GIT_CAP_THIN_PACK);
   continue;
  }

  if (!git__prefixcmp(ptr, GIT_CAP_SYMREF)) {
   int error;

   if ((error = append_symref(&ptr, symrefs, ptr)) < 0)
    return error;

   continue;
  }


  ptr = strchr(ptr, ' ');
 }

 return 0;
}
