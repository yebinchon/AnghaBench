
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int public_key_free (void*) ;
 int public_key_signature_free (void*) ;

__attribute__((used)) static void public_key_destroy(void *payload0, void *payload3)
{
 public_key_free(payload0);
 public_key_signature_free(payload3);
}
