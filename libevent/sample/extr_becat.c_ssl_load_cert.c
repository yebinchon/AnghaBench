
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_context {int pkey; int cert; } ;
typedef int X509_NAME ;


 int ASN1_INTEGER_set (int ,int) ;
 int EVP_sha1 () ;
 int MBSTRING_ASC ;
 int X509_NAME_add_entry_by_txt (int *,char*,int ,unsigned char*,int,int,int ) ;
 int X509_get_notAfter (int ) ;
 int X509_get_notBefore (int ) ;
 int X509_get_serialNumber (int ) ;
 int * X509_get_subject_name (int ) ;
 int X509_gmtime_adj (int ,long) ;
 int X509_new () ;
 int X509_set_issuer_name (int ,int *) ;
 int X509_set_pubkey (int ,int ) ;
 int X509_sign (int ,int ,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int ssl_load_cert(struct ssl_context *ssl)
{
 X509_NAME *name;

 ssl->cert = X509_new();

 ASN1_INTEGER_set(X509_get_serialNumber(ssl->cert), 1);

 X509_gmtime_adj(X509_get_notBefore(ssl->cert), 0);

 X509_gmtime_adj(X509_get_notAfter(ssl->cert),
  (long)time(((void*)0)) + 365 * 86400);

 X509_set_pubkey(ssl->cert, ssl->pkey);

 name = X509_get_subject_name(ssl->cert);
 X509_NAME_add_entry_by_txt(
  name, "C", MBSTRING_ASC, (unsigned char *)"--", -1, -1, 0);
 X509_NAME_add_entry_by_txt(
  name, "O", MBSTRING_ASC, (unsigned char *)"<NULL>", -1, -1, 0);
 X509_NAME_add_entry_by_txt(
  name, "CN", MBSTRING_ASC, (unsigned char *)"*", -1, -1, 0);
 X509_set_issuer_name(ssl->cert, name);

 X509_sign(ssl->cert, ssl->pkey, EVP_sha1());

 return 0;
}
