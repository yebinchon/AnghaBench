
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; char const* name; } ;
typedef TYPE_1__ BIO_METHOD ;


 TYPE_1__* calloc (int,int) ;

__attribute__((used)) static inline BIO_METHOD *BIO_meth_new(int type, const char *name)
{
 BIO_METHOD *biom = calloc(1, sizeof(BIO_METHOD));

 if (biom != ((void*)0)) {
  biom->type = type;
  biom->name = name;
 }
 return biom;
}
