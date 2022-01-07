
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arr1 ;
 int arr2 ;
 int arr3 ;
 int arr4 ;
 int inline1 ;
 int inline2 ;
 int jw_init (int *) ;
 int mixed1 ;
 int nest1 ;
 int obj1 ;
 int obj2 ;
 int obj3 ;
 int obj4 ;
 int obj5 ;
 int obj6 ;
 int p (int ) ;
 int t (int ) ;

__attribute__((used)) static int unit_tests(void)
{

 t(obj1);
 t(obj2);
 t(obj3);
 t(obj4);
 t(obj5);
 t(obj6);

 t(arr1);
 t(arr2);
 t(arr3);
 t(arr4);

 t(nest1);

 t(inline1);
 t(inline2);

 jw_init(&obj1);
 jw_init(&obj2);
 jw_init(&obj3);
 jw_init(&obj4);

 jw_init(&arr1);
 jw_init(&arr2);
 jw_init(&arr3);
 jw_init(&arr4);

 jw_init(&inline1);
 jw_init(&inline2);


 p(obj1);
 p(obj2);
 p(obj3);
 p(obj4);

 p(arr1);
 p(arr2);
 p(arr3);
 p(arr4);

 p(inline1);
 p(inline2);


 t(mixed1);
 jw_init(&mixed1);
 p(mixed1);

 return 0;
}
