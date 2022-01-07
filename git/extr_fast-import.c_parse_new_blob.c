
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int last_blob ;
 int next_mark ;
 int parse_and_store_blob (int *,int *,int ) ;
 int parse_mark () ;
 int parse_original_identifier () ;
 int read_next_command () ;

__attribute__((used)) static void parse_new_blob(void)
{
 read_next_command();
 parse_mark();
 parse_original_identifier();
 parse_and_store_blob(&last_blob, ((void*)0), next_mark);
}
