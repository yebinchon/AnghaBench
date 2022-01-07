
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signature_check {int dummy; } ;
typedef int sigc ;


 unsigned int GPG_VERIFY_OMIT_STATUS ;
 unsigned int GPG_VERIFY_VERBOSE ;
 int check_signature (char const*,size_t,char const*,unsigned long,struct signature_check*) ;
 int error (char*) ;
 int memset (struct signature_check*,int ,int) ;
 size_t parse_signature (char const*,unsigned long) ;
 int print_signature_buffer (struct signature_check*,unsigned int) ;
 int signature_check_clear (struct signature_check*) ;
 int write_in_full (int,char const*,size_t) ;

__attribute__((used)) static int run_gpg_verify(const char *buf, unsigned long size, unsigned flags)
{
 struct signature_check sigc;
 size_t payload_size;
 int ret;

 memset(&sigc, 0, sizeof(sigc));

 payload_size = parse_signature(buf, size);

 if (size == payload_size) {
  if (flags & GPG_VERIFY_VERBOSE)
   write_in_full(1, buf, payload_size);
  return error("no signature found");
 }

 ret = check_signature(buf, payload_size, buf + payload_size,
    size - payload_size, &sigc);

 if (!(flags & GPG_VERIFY_OMIT_STATUS))
  print_signature_buffer(&sigc, flags);

 signature_check_clear(&sigc);
 return ret;
}
