; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-spi.c___cvmx_helper_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-spi.c___cvmx_helper_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pko_reg_crc_enable = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@CVMX_PKO_REG_CRC_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_spi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_pko_reg_crc_enable, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call %struct.TYPE_4__* (...) @cvmx_sysinfo_get()
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @cvmx_spi4000_is_present(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 10, i32* %3, align 4
  br label %30

15:                                               ; preds = %10, %1
  store i32 16, i32* %3, align 4
  %16 = load i32, i32* @CVMX_PKO_REG_CRC_ENABLE, align 4
  %17 = call i32 @cvmx_read_csr(i32 %16)
  %18 = bitcast %union.cvmx_pko_reg_crc_enable* %4 to i32*
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = mul nsw i32 %19, 16
  %21 = shl i32 65535, %20
  %22 = bitcast %union.cvmx_pko_reg_crc_enable* %4 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @CVMX_PKO_REG_CRC_ENABLE, align 4
  %27 = bitcast %union.cvmx_pko_reg_crc_enable* %4 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cvmx_write_csr(i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %15, %14
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @__cvmx_helper_setup_gmx(i32 %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_4__* @cvmx_sysinfo_get(...) #1

declare dso_local i64 @cvmx_spi4000_is_present(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @__cvmx_helper_setup_gmx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
