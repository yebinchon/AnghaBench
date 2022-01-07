
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMAC_CTX ;


 int * calloc (int,int) ;

__attribute__((used)) static inline HMAC_CTX *HMAC_CTX_new(void)
{
 return calloc(1, sizeof(HMAC_CTX));
}
