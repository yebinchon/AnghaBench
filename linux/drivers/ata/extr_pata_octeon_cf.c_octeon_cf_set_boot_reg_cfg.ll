; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_set_boot_reg_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_set_boot_reg_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_mio_boot_reg_cfgx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @octeon_cf_set_boot_reg_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_cf_set_boot_reg_cfg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_mio_boot_reg_cfgx, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %11 [
    i32 8, label %8
    i32 4, label %9
    i32 2, label %10
  ]

8:                                                ; preds = %2
  store i32 3, i32* %6, align 4
  br label %12

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

10:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %12

11:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %11, %10, %9, %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @CVMX_MIO_BOOT_REG_CFGX(i32 %13)
  %15 = call i32 @cvmx_read_csr(i32 %14)
  %16 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to i32*
  store i32 %15, i32* %16, align 8
  %17 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 8
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @CVMX_MIO_BOOT_REG_CFGX(i32 %36)
  %38 = bitcast %union.cvmx_mio_boot_reg_cfgx* %5 to i32*
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cvmx_write_csr(i32 %37, i32 %39)
  ret void
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_REG_CFGX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
