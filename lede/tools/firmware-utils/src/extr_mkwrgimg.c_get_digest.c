
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrg_header {int digest; int devname; int offset; } ;
typedef int MD5_CTX ;


 int MD5_Final (int ,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,char*,int) ;

__attribute__((used)) static void get_digest(struct wrg_header *header, char *data, int size)
{
 MD5_CTX ctx;

 MD5_Init(&ctx);

 MD5_Update(&ctx, (char *)&header->offset, sizeof(header->offset));
 MD5_Update(&ctx, (char *)&header->devname, sizeof(header->devname));
 MD5_Update(&ctx, data, size);

 MD5_Final(header->digest, &ctx);
}
