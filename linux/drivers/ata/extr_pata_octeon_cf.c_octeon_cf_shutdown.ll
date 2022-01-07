; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.cvmx_mio_boot_dma_cfgx = type { i64 }
%union.cvmx_mio_boot_dma_intx = type { i64 }
%struct.octeon_cf_port = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_CFG = common dso_local global i64 0, align 8
@DMA_INT_EN = common dso_local global i64 0, align 8
@DMA_INT = common dso_local global i64 0, align 8
@ATA_SRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @octeon_cf_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_cf_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %union.cvmx_mio_boot_dma_cfgx, align 8
  %4 = alloca %union.cvmx_mio_boot_dma_intx, align 8
  %5 = alloca %struct.octeon_cf_port*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.octeon_cf_port* @dev_get_platdata(%struct.device* %6)
  store %struct.octeon_cf_port* %7, %struct.octeon_cf_port** %5, align 8
  %8 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %9 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %1
  %13 = bitcast %union.cvmx_mio_boot_dma_cfgx* %3 to i64*
  store i64 0, i64* %13, align 8
  %14 = bitcast %union.cvmx_mio_boot_dma_cfgx* %3 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %17 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DMA_CFG, align 8
  %20 = add nsw i64 %18, %19
  %21 = bitcast %union.cvmx_mio_boot_dma_cfgx* %3 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @cvmx_write_csr(i64 %20, i64 %22)
  %24 = bitcast %union.cvmx_mio_boot_dma_intx* %4 to i64*
  store i64 0, i64* %24, align 8
  %25 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %26 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMA_INT_EN, align 8
  %29 = add nsw i64 %27, %28
  %30 = bitcast %union.cvmx_mio_boot_dma_intx* %4 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @cvmx_write_csr(i64 %29, i64 %31)
  %33 = bitcast %union.cvmx_mio_boot_dma_intx* %4 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %36 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMA_INT, align 8
  %39 = add nsw i64 %37, %38
  %40 = bitcast %union.cvmx_mio_boot_dma_intx* %4 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @cvmx_write_csr(i64 %39, i64 %41)
  %43 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %44 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @__raw_writeb(i32 0, i32 %45)
  %47 = call i32 @udelay(i32 20)
  %48 = load i32, i32* @ATA_SRST, align 4
  %49 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %50 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @__raw_writeb(i32 %48, i32 %51)
  %53 = call i32 @udelay(i32 20)
  %54 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %55 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @__raw_writeb(i32 0, i32 %56)
  %58 = call i32 @mdelay(i32 100)
  br label %59

59:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.octeon_cf_port* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
