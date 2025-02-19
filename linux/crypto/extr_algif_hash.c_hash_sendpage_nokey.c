
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct page {int dummy; } ;
typedef int ssize_t ;


 int hash_check_key (struct socket*) ;
 int hash_sendpage (struct socket*,struct page*,int,size_t,int) ;

__attribute__((used)) static ssize_t hash_sendpage_nokey(struct socket *sock, struct page *page,
       int offset, size_t size, int flags)
{
 int err;

 err = hash_check_key(sock);
 if (err)
  return err;

 return hash_sendpage(sock, page, offset, size, flags);
}
