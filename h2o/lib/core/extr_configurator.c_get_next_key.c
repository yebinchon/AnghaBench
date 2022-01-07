
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_iovec_t ;


 unsigned int YOML_TYPE_MAPPING ;
 unsigned int YOML_TYPE_SCALAR ;
 unsigned int YOML_TYPE_SEQUENCE ;
 int h2o_fatal (char*,char const*) ;
 int h2o_iovec_init (char const*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static const char *get_next_key(const char *start, h2o_iovec_t *output, unsigned *type_mask)
{
    const char *p = strchr(start, ':');
    if (p == ((void*)0))
        goto Error;


    *output = h2o_iovec_init(start, p - start);


    *type_mask = 0;
    for (++p; *p != '\0'; ++p) {
        switch (*p) {
        case ',':
            return p + 1;
        case 's':
            *type_mask |= 1u << YOML_TYPE_SCALAR;
            break;
        case 'a':
            *type_mask |= 1u << YOML_TYPE_SEQUENCE;
            break;
        case 'm':
            *type_mask |= 1u << YOML_TYPE_MAPPING;
            break;
        case '*':
            *type_mask |= (1u << YOML_TYPE_SCALAR) | (1u << YOML_TYPE_SEQUENCE) | (1u << YOML_TYPE_MAPPING);
            break;
        default:
            goto Error;
        }
    }

    return ((void*)0);

Error:
    h2o_fatal("detected invalid or missing type specifier; input is: %s\n", start);
}
