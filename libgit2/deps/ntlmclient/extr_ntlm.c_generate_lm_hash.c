
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char* ntlm_des_block ;
typedef int keystr2 ;
typedef int keystr1 ;


 int MIN (int,size_t) ;
 unsigned char* NTLM_LM_PLAINTEXT ;
 int des_key_from_password (unsigned char**,unsigned char*,size_t) ;
 int memset (unsigned char**,int ,int) ;
 scalar_t__ ntlm_des_encrypt (unsigned char**,unsigned char**,unsigned char**) ;
 size_t strlen (char const*) ;
 scalar_t__ toupper (char const) ;

__attribute__((used)) static inline bool generate_lm_hash(
 ntlm_des_block out[2],
 const char *password)
{

 ntlm_des_block plaintext = NTLM_LM_PLAINTEXT;
 ntlm_des_block keystr1, keystr2;
 size_t keystr1_len, keystr2_len;
 ntlm_des_block key1, key2;
 size_t password_len, i;


 memset(&keystr1, 0, sizeof(keystr1));
 memset(&keystr2, 0, sizeof(keystr2));

 password_len = password ? strlen(password) : 0;


 keystr1_len = MIN(7, password_len);
 keystr2_len = (password_len > 7) ? MIN(14, password_len) - 7 : 0;

 for (i = 0; i < keystr1_len; i++)
  keystr1[i] = (unsigned char)toupper(password[i]);
 for (i = 0; i < keystr2_len; i++)
  keystr2[i] = (unsigned char)toupper(password[i+7]);


 des_key_from_password(&key1, keystr1, keystr1_len);
 des_key_from_password(&key2, keystr2, keystr2_len);

 return ntlm_des_encrypt(&out[0], &plaintext, &key1) &&
  ntlm_des_encrypt(&out[1], &plaintext, &key2);
}
