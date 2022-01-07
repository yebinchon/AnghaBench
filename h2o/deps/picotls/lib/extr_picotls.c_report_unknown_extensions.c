
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptls_t ;
typedef int ptls_raw_extension_t ;
struct TYPE_4__ {int (* collected_extensions ) (int *,TYPE_1__*,int *) ;int * collect_extension; } ;
typedef TYPE_1__ ptls_handshake_properties_t ;


 int assert (int ) ;
 int stub1 (int *,TYPE_1__*,int *) ;

__attribute__((used)) static int report_unknown_extensions(ptls_t *tls, ptls_handshake_properties_t *properties, ptls_raw_extension_t *slots)
{
    if (properties != ((void*)0) && properties->collect_extension != ((void*)0)) {
        assert(properties->collected_extensions != ((void*)0));
        return properties->collected_extensions(tls, properties, slots);
    } else {
        return 0;
    }
}
