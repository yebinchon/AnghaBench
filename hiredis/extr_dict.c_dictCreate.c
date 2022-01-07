
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dictType ;
typedef int dict ;


 int _dictInit (int *,int *,void*) ;
 int * malloc (int) ;

__attribute__((used)) static dict *dictCreate(dictType *type, void *privDataPtr) {
    dict *ht = malloc(sizeof(*ht));
    _dictInit(ht,type,privDataPtr);
    return ht;
}
