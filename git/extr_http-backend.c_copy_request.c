
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int close (int) ;
 int die_errno (char*) ;
 int free (unsigned char*) ;
 scalar_t__ read_request (int ,unsigned char**,scalar_t__) ;
 int write_to_child (int,unsigned char*,scalar_t__,char const*) ;

__attribute__((used)) static void copy_request(const char *prog_name, int out, ssize_t req_len)
{
 unsigned char *buf;
 ssize_t n = read_request(0, &buf, req_len);
 if (n < 0)
  die_errno("error reading request body");
 write_to_child(out, buf, n, prog_name);
 close(out);
 free(buf);
}
