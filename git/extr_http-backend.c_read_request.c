
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ read_request_eof (int,unsigned char**) ;
 scalar_t__ read_request_fixed_len (int,scalar_t__,unsigned char**) ;

__attribute__((used)) static ssize_t read_request(int fd, unsigned char **out, ssize_t req_len)
{
 if (req_len < 0)
  return read_request_eof(fd, out);
 else
  return read_request_fixed_len(fd, req_len, out);
}
