
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_certificate {struct x509_certificate* skid; struct x509_certificate* id; struct x509_certificate* subject; struct x509_certificate* issuer; int sig; int pub; } ;


 int kfree (struct x509_certificate*) ;
 int public_key_free (int ) ;
 int public_key_signature_free (int ) ;

void x509_free_certificate(struct x509_certificate *cert)
{
 if (cert) {
  public_key_free(cert->pub);
  public_key_signature_free(cert->sig);
  kfree(cert->issuer);
  kfree(cert->subject);
  kfree(cert->id);
  kfree(cert->skid);
  kfree(cert);
 }
}
