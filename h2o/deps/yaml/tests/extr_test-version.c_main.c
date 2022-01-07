
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yaml_token_t ;
typedef int yaml_parser_t ;
typedef int yaml_event_t ;


 int assert (int) ;
 int printf (char*,int) ;
 int sprintf (char*,char*,int,int,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int yaml_get_version (int*,int*,int*) ;
 int yaml_get_version_string () ;

int
main(void)
{
    int major = -1;
    int minor = -1;
    int patch = -1;
    char buf[64];

    yaml_get_version(&major, &minor, &patch);
    sprintf(buf, "%d.%d.%d", major, minor, patch);
    assert(strcmp(buf, yaml_get_version_string()) == 0);


    printf("sizeof(token) = %d\n", sizeof(yaml_token_t));
    printf("sizeof(event) = %d\n", sizeof(yaml_event_t));
    printf("sizeof(parser) = %d\n", sizeof(yaml_parser_t));

    return 0;
}
