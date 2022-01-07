
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HostnameValidationResult ;
typedef int ASN1_STRING ;


 scalar_t__ ASN1_STRING_data (int *) ;
 scalar_t__ ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int MalformedCertificate ;
 int MatchFound ;
 int MatchNotFound ;
 scalar_t__ has_nul (char*,int) ;
 scalar_t__ memeq_ncase (char const*,char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static HostnameValidationResult validate_name(const char *hostname, ASN1_STRING *certname_asn1) {



 char *certname_s = (char *) ASN1_STRING_data(certname_asn1);

 int certname_len = ASN1_STRING_length(certname_asn1), hostname_len = strlen(hostname);


 if (has_nul(certname_s, certname_len)) {
  return MalformedCertificate;
 }

 if (hostname_len != 0 && hostname[hostname_len - 1] == '.')
  --hostname_len;

 if (certname_len > 2 && certname_s[0] == '*' && certname_s[1] == '.') {
  if (hostname_len != 0) {
   do {
    --hostname_len;
    if (*hostname++ == '.')
     break;
   } while (hostname_len != 0);
  }
  certname_s += 2;
  certname_len -= 2;
 }

 if (certname_len != hostname_len) {
  return MatchNotFound;
 }
 return memeq_ncase(hostname, certname_s, hostname_len) ? MatchFound : MatchNotFound;
}
