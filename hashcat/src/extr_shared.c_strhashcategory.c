
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



 char const* HASH_CATEGORY_ARCHIVE_STR ;

 char const* HASH_CATEGORY_DATABASE_SERVER_STR ;

 char const* HASH_CATEGORY_DOCUMENTS_STR ;

 char const* HASH_CATEGORY_EAS_STR ;

 char const* HASH_CATEGORY_FDE_STR ;

 char const* HASH_CATEGORY_FORUM_SOFTWARE_STR ;

 char const* HASH_CATEGORY_FRAMEWORK_STR ;

 char const* HASH_CATEGORY_GENERIC_KDF_STR ;

 char const* HASH_CATEGORY_NETWORK_PROTOCOL_STR ;

 char const* HASH_CATEGORY_NETWORK_SERVER_STR ;

 char const* HASH_CATEGORY_OS_STR ;

 char const* HASH_CATEGORY_OTP_STR ;

 char const* HASH_CATEGORY_PASSWORD_MANAGER_STR ;

 char const* HASH_CATEGORY_PLAIN_STR ;

 char const* HASH_CATEGORY_RAW_CHECKSUM_STR ;

 char const* HASH_CATEGORY_RAW_CIPHER_KPA_STR ;


 char const* HASH_CATEGORY_RAW_HASH_AUTHENTICATED_STR ;

 char const* HASH_CATEGORY_RAW_HASH_SALTED_STR ;
 char const* HASH_CATEGORY_RAW_HASH_STR ;

 char const* HASH_CATEGORY_UNDEFINED_STR ;

const char *strhashcategory (const u32 hash_category)
{
  switch (hash_category)
  {
    case 128: return HASH_CATEGORY_UNDEFINED_STR;
    case 131: return HASH_CATEGORY_RAW_HASH_STR;
    case 129: return HASH_CATEGORY_RAW_HASH_SALTED_STR;
    case 130: return HASH_CATEGORY_RAW_HASH_AUTHENTICATED_STR;
    case 132: return HASH_CATEGORY_RAW_CIPHER_KPA_STR;
    case 140: return HASH_CATEGORY_GENERIC_KDF_STR;
    case 139: return HASH_CATEGORY_NETWORK_PROTOCOL_STR;
    case 142: return HASH_CATEGORY_FORUM_SOFTWARE_STR;
    case 146: return HASH_CATEGORY_DATABASE_SERVER_STR;
    case 138: return HASH_CATEGORY_NETWORK_SERVER_STR;
    case 133: return HASH_CATEGORY_RAW_CHECKSUM_STR;
    case 137: return HASH_CATEGORY_OS_STR;
    case 144: return HASH_CATEGORY_EAS_STR;
    case 147: return HASH_CATEGORY_ARCHIVE_STR;
    case 143: return HASH_CATEGORY_FDE_STR;
    case 145: return HASH_CATEGORY_DOCUMENTS_STR;
    case 135: return HASH_CATEGORY_PASSWORD_MANAGER_STR;
    case 136: return HASH_CATEGORY_OTP_STR;
    case 134: return HASH_CATEGORY_PLAIN_STR;
    case 141: return HASH_CATEGORY_FRAMEWORK_STR;
  }

  return ((void*)0);
}
