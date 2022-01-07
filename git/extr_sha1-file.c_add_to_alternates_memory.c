
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int link_alt_odb_entries (int ,char const*,char,int *,int ) ;
 int prepare_alt_odb (int ) ;
 int the_repository ;

void add_to_alternates_memory(const char *reference)
{




 prepare_alt_odb(the_repository);

 link_alt_odb_entries(the_repository, reference,
        '\n', ((void*)0), 0);
}
