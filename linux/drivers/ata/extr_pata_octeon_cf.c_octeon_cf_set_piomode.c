
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int waitm; int pause; int wr_hld; int rd_hld; int we; int oe; scalar_t__ adr; void* ce; scalar_t__ wait; scalar_t__ page; scalar_t__ ale; scalar_t__ pages; scalar_t__ pagem; } ;
union cvmx_mio_boot_reg_timx {int u64; TYPE_1__ s; } ;
struct octeon_cf_port {int cs1; scalar_t__ is_true_ide; int cs0; } ;
struct ata_timing {int active; scalar_t__ setup; scalar_t__ cycle; } ;
struct ata_port {struct octeon_cf_port* private_data; } ;
struct ata_device {int pio_mode; } ;


 int BUG_ON (int ) ;
 int CVMX_MIO_BOOT_REG_TIMX (int ) ;
 int ata_pio_need_iordy (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 void* ns_to_tim_reg (unsigned int,int) ;
 int octeon_cf_set_boot_reg_cfg (int ,unsigned int) ;
 long long octeon_get_io_clock_rate () ;

__attribute__((used)) static void octeon_cf_set_piomode(struct ata_port *ap, struct ata_device *dev)
{
 struct octeon_cf_port *cf_port = ap->private_data;
 union cvmx_mio_boot_reg_timx reg_tim;
 int T;
 struct ata_timing timing;

 unsigned int div;
 int use_iordy;
 int trh;
 int pause;

 int t2;





 if (octeon_get_io_clock_rate() <= 800000000)
  div = 4;
 else
  div = 8;
 T = (int)((1000000000000LL * div) / octeon_get_io_clock_rate());

 BUG_ON(ata_timing_compute(dev, dev->pio_mode, &timing, T, T));

 t2 = timing.active;
 if (t2)
  t2--;

 trh = ns_to_tim_reg(div, 20);
 if (trh)
  trh--;

 pause = (int)timing.cycle - (int)timing.active -
  (int)timing.setup - trh;
 if (pause < 0)
  pause = 0;
 if (pause)
  pause--;

 octeon_cf_set_boot_reg_cfg(cf_port->cs0, div);
 if (cf_port->is_true_ide)

  octeon_cf_set_boot_reg_cfg(cf_port->cs1, div);


 use_iordy = ata_pio_need_iordy(dev);

 reg_tim.u64 = cvmx_read_csr(CVMX_MIO_BOOT_REG_TIMX(cf_port->cs0));

 reg_tim.s.pagem = 0;

 reg_tim.s.waitm = use_iordy;

 reg_tim.s.pages = 0;

 reg_tim.s.ale = 0;

 reg_tim.s.page = 0;

 reg_tim.s.wait = 0;

 reg_tim.s.pause = pause;

 reg_tim.s.wr_hld = trh;

 reg_tim.s.rd_hld = trh;

 reg_tim.s.we = t2;

 reg_tim.s.oe = t2;

 reg_tim.s.ce = ns_to_tim_reg(div, 5);

 reg_tim.s.adr = 0;


 cvmx_write_csr(CVMX_MIO_BOOT_REG_TIMX(cf_port->cs0), reg_tim.u64);
 if (cf_port->is_true_ide)

  cvmx_write_csr(CVMX_MIO_BOOT_REG_TIMX(cf_port->cs1),
          reg_tim.u64);
}
