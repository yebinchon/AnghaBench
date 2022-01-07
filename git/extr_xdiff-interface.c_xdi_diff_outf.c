
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xpparam_t ;
typedef int xdiff_emit_line_fn ;
typedef scalar_t__ xdiff_emit_hunk_fn ;
typedef int xdemitconf_t ;
struct xdiff_emit_state {int remainder; struct xdiff_emit_state* priv; int out_line; int out_hunk; void* consume_callback_data; int line_fn; scalar_t__ hunk_fn; } ;
typedef struct xdiff_emit_state xdemitcb_t ;
typedef int state ;
typedef int mmfile_t ;
typedef int ecb ;


 int memset (struct xdiff_emit_state*,int ,int) ;
 int strbuf_init (int *,int ) ;
 int strbuf_release (int *) ;
 int xdi_diff (int *,int *,int const*,int const*,struct xdiff_emit_state*) ;
 int xdiff_out_hunk ;
 int xdiff_outf ;

int xdi_diff_outf(mmfile_t *mf1, mmfile_t *mf2,
    xdiff_emit_hunk_fn hunk_fn,
    xdiff_emit_line_fn line_fn,
    void *consume_callback_data,
    xpparam_t const *xpp, xdemitconf_t const *xecfg)
{
 int ret;
 struct xdiff_emit_state state;
 xdemitcb_t ecb;

 memset(&state, 0, sizeof(state));
 state.hunk_fn = hunk_fn;
 state.line_fn = line_fn;
 state.consume_callback_data = consume_callback_data;
 memset(&ecb, 0, sizeof(ecb));
 if (hunk_fn)
  ecb.out_hunk = xdiff_out_hunk;
 ecb.out_line = xdiff_outf;
 ecb.priv = &state;
 strbuf_init(&state.remainder, 0);
 ret = xdi_diff(mf1, mf2, xpp, xecfg, &ecb);
 strbuf_release(&state.remainder);
 return ret;
}
