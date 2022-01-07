
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME_ENTRY ;
typedef int X509 ;
typedef int HostnameValidationResult ;
typedef int ASN1_STRING ;


 scalar_t__ ASN1_STRING_get0_data (int *) ;
 scalar_t__ ASN1_STRING_length (int *) ;
 scalar_t__ CURL_HOST_MATCH ;
 scalar_t__ Curl_cert_hostcheck (char const*,char const*) ;
 int Error ;
 int MalformedCertificate ;
 int MatchFound ;
 int MatchNotFound ;
 int NID_commonName ;
 int * X509_NAME_ENTRY_get_data (int *) ;
 int * X509_NAME_get_entry (int ,int) ;
 int X509_NAME_get_index_by_NID (int ,int ,int) ;
 int X509_get_subject_name (int *) ;
 size_t strlen (char const*) ;

__attribute__((used)) static HostnameValidationResult matches_common_name(const char *hostname, const X509 *server_cert) {
        int common_name_loc = -1;
        X509_NAME_ENTRY *common_name_entry = ((void*)0);
        ASN1_STRING *common_name_asn1 = ((void*)0);
        const char *common_name_str = ((void*)0);


        common_name_loc = X509_NAME_get_index_by_NID(X509_get_subject_name((X509 *) server_cert), NID_commonName, -1);
        if (common_name_loc < 0) {
                return Error;
        }


        common_name_entry = X509_NAME_get_entry(X509_get_subject_name((X509 *) server_cert), common_name_loc);
        if (common_name_entry == ((void*)0)) {
                return Error;
        }


        common_name_asn1 = X509_NAME_ENTRY_get_data(common_name_entry);
        if (common_name_asn1 == ((void*)0)) {
                return Error;
        }
        common_name_str = (char *) ASN1_STRING_get0_data(common_name_asn1);


        if ((size_t)ASN1_STRING_length(common_name_asn1) != strlen(common_name_str)) {
                return MalformedCertificate;
        }


        if (Curl_cert_hostcheck(common_name_str, hostname) == CURL_HOST_MATCH) {
                return MatchFound;
        }
        else {
                return MatchNotFound;
        }
}
