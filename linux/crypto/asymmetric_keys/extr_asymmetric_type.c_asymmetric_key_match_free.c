
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_match_data {int preparsed; } ;


 int kfree (int ) ;

__attribute__((used)) static void asymmetric_key_match_free(struct key_match_data *match_data)
{
 kfree(match_data->preparsed);
}
