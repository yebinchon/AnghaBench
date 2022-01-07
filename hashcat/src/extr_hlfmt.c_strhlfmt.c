
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 char const* HLFMT_TEXT_DCC ;
 char const* HLFMT_TEXT_DCC2 ;
 char const* HLFMT_TEXT_HASHCAT ;
 char const* HLFMT_TEXT_NETNTLM1 ;
 char const* HLFMT_TEXT_NETNTLM2 ;
 char const* HLFMT_TEXT_NSLDAP ;
 char const* HLFMT_TEXT_NSLDAPS ;
 char const* HLFMT_TEXT_PASSWD ;
 char const* HLFMT_TEXT_PWDUMP ;
 char const* HLFMT_TEXT_SHADOW ;

const char *strhlfmt (const u32 hashfile_format)
{
  switch (hashfile_format)
  {
    case 135: return HLFMT_TEXT_HASHCAT;
    case 129: return HLFMT_TEXT_PWDUMP;
    case 130: return HLFMT_TEXT_PASSWD;
    case 128: return HLFMT_TEXT_SHADOW;
    case 137: return HLFMT_TEXT_DCC;
    case 136: return HLFMT_TEXT_DCC2;
    case 134: return HLFMT_TEXT_NETNTLM1;
    case 133: return HLFMT_TEXT_NETNTLM2;
    case 132: return HLFMT_TEXT_NSLDAP;
    case 131: return HLFMT_TEXT_NSLDAPS;
  }

  return "Unknown";
}
