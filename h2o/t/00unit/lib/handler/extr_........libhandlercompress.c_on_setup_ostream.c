
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_22__ ;
typedef struct TYPE_28__ TYPE_21__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_15__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_33__ {int quality; } ;
struct TYPE_32__ {int quality; } ;
struct TYPE_34__ {TYPE_5__ gzip; TYPE_4__ brotli; int min_size; } ;
struct st_compress_filter_t {TYPE_6__ args; } ;
struct TYPE_23__ {int * next; int do_send; } ;
struct st_compress_encoder_t {TYPE_12__* compressor; TYPE_10__ super; } ;
typedef size_t ssize_t ;
struct TYPE_26__ {size_t size; TYPE_8__* entries; } ;
struct TYPE_37__ {int status; TYPE_15__ headers; int content_length; TYPE_3__* mime_attr; } ;
struct TYPE_27__ {int len; int base; } ;
struct TYPE_30__ {TYPE_1__ method; } ;
struct TYPE_24__ {int version; int compress_hint; int preferred_chunk_size; TYPE_9__ res; int pool; int headers; TYPE_2__ input; } ;
typedef TYPE_11__ h2o_req_t ;
typedef int h2o_ostream_t ;
typedef int h2o_filter_t ;
struct TYPE_35__ {int len; int base; } ;
struct TYPE_25__ {TYPE_7__ name; } ;
typedef TYPE_12__ h2o_compress_context_t ;
struct TYPE_36__ {int value; int * name; } ;
struct TYPE_31__ {int is_compressible; } ;
struct TYPE_29__ {int buf; } ;
struct TYPE_28__ {int buf; } ;


 int BUF_SIZE ;
 int H2O_ALIGNOF (struct st_compress_encoder_t) ;
 int H2O_COMPRESSIBLE_BROTLI ;
 int H2O_COMPRESSIBLE_GZIP ;





 int H2O_STRLIT (char*) ;
 TYPE_22__* H2O_TOKEN_ACCEPT_RANGES ;
 TYPE_21__* H2O_TOKEN_CONTENT_ENCODING ;
 int H2O_TOKEN_VARY ;
 int SIZE_MAX ;
 int do_send ;
 int h2o_add_header (int *,TYPE_15__*,...) ;
 scalar_t__ h2o_add_ostream (TYPE_11__*,int ,int,int **) ;
 TYPE_12__* h2o_compress_brotli_open (int *,int,int ,int ) ;
 TYPE_12__* h2o_compress_gzip_open (int *,int) ;
 int h2o_get_compressible_types (int *) ;
 int h2o_iovec_init (int ) ;
 scalar_t__ h2o_memis (int ,int ,int ) ;
 int h2o_req_fill_mime_attributes (TYPE_11__*) ;
 int h2o_set_header_token (int *,TYPE_15__*,int ,int ) ;
 int h2o_setup_next_ostream (TYPE_11__*,int **) ;

__attribute__((used)) static void on_setup_ostream(h2o_filter_t *_self, h2o_req_t *req, h2o_ostream_t **slot)
{
    struct st_compress_filter_t *self = (void *)_self;
    struct st_compress_encoder_t *encoder;
    int compressible_types;
    int compressible_types_mask = H2O_COMPRESSIBLE_BROTLI | H2O_COMPRESSIBLE_GZIP;
    h2o_compress_context_t *compressor;
    ssize_t i;

    if (req->version < 0x101)
        goto Next;
    if (req->res.status != 200)
        goto Next;
    if (h2o_memis(req->input.method.base, req->input.method.len, H2O_STRLIT("HEAD")))
        goto Next;

    switch (req->compress_hint) {
    case 131:

        goto Next;
    case 130:

        break;
    case 129:
        compressible_types_mask = H2O_COMPRESSIBLE_BROTLI;
        break;
    case 128:
        compressible_types_mask = H2O_COMPRESSIBLE_GZIP;
        break;
    case 132:
    default:


        if (req->res.mime_attr == ((void*)0))
            h2o_req_fill_mime_attributes(req);
        if (!req->res.mime_attr->is_compressible)
            goto Next;
        if (req->res.content_length < self->args.min_size)
            goto Next;
    }


    compressible_types = h2o_get_compressible_types(&req->headers) & compressible_types_mask;
    if (compressible_types == 0)
        goto Next;


    size_t content_encoding_header_index = -1, accept_ranges_header_index = -1;
    for (i = 0; i != req->res.headers.size; ++i) {
        if (req->res.headers.entries[i].name == &H2O_TOKEN_CONTENT_ENCODING->buf)
            content_encoding_header_index = i;
        else if (req->res.headers.entries[i].name == &H2O_TOKEN_ACCEPT_RANGES->buf)
            accept_ranges_header_index = i;
        else
            continue;
    }
    if (content_encoding_header_index != -1)
        goto Next;
        if (self->args.gzip.quality != -1 && (compressible_types & H2O_COMPRESSIBLE_GZIP) != 0) {
        compressor = h2o_compress_gzip_open(&req->pool, self->args.gzip.quality);
    } else {

        h2o_set_header_token(&req->pool, &req->res.headers, H2O_TOKEN_VARY, H2O_STRLIT("accept-encoding"));
        goto Next;
    }


    req->res.content_length = SIZE_MAX;
    h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_CONTENT_ENCODING, ((void*)0), compressor->name.base, compressor->name.len);
    h2o_set_header_token(&req->pool, &req->res.headers, H2O_TOKEN_VARY, H2O_STRLIT("accept-encoding"));
    if (accept_ranges_header_index != -1) {
        req->res.headers.entries[accept_ranges_header_index].value = h2o_iovec_init(H2O_STRLIT("none"));
    } else {
        h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_ACCEPT_RANGES, ((void*)0), H2O_STRLIT("none"));
    }


    encoder = (void *)h2o_add_ostream(req, H2O_ALIGNOF(*encoder), sizeof(*encoder), slot);
    encoder->super.do_send = do_send;
    slot = &encoder->super.next;
    encoder->compressor = compressor;


    if (req->preferred_chunk_size > BUF_SIZE)
        req->preferred_chunk_size = BUF_SIZE;

Next:
    h2o_setup_next_ostream(req, slot);
}
