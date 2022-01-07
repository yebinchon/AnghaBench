
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum OID { ____Placeholder_OID } OID ;
typedef int buffer ;


 int EBADMSG ;
 int OID__NR ;
 int OID_msIndividualSPKeyPurpose ;
 int OID_msPeImageDataObjId ;
 int look_up_OID (void const*,size_t) ;
 int pr_err (char*,...) ;
 int sprint_oid (void const*,size_t,char*,int) ;

int mscode_note_content_type(void *context, size_t hdrlen,
        unsigned char tag,
        const void *value, size_t vlen)
{
 enum OID oid;

 oid = look_up_OID(value, vlen);
 if (oid == OID__NR) {
  char buffer[50];

  sprint_oid(value, vlen, buffer, sizeof(buffer));
  pr_err("Unknown OID: %s\n", buffer);
  return -EBADMSG;
 }






 if (oid != OID_msPeImageDataObjId &&
     oid != OID_msIndividualSPKeyPurpose) {
  pr_err("Unexpected content type OID %u\n", oid);
  return -EBADMSG;
 }

 return 0;
}
