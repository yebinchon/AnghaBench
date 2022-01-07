; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_helper_global_setup_ipd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_helper_global_setup_ipd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_FPA_PACKET_POOL_SIZE = common dso_local global i32 0, align 4
@CVMX_HELPER_FIRST_MBUFF_SKIP = common dso_local global i32 0, align 4
@CVMX_HELPER_NOT_FIRST_MBUFF_SKIP = common dso_local global i32 0, align 4
@CVMX_FPA_WQE_POOL = common dso_local global i32 0, align 4
@CVMX_IPD_OPC_MODE_STT = common dso_local global i32 0, align 4
@CVMX_HELPER_ENABLE_BACK_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__cvmx_helper_global_setup_ipd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_global_setup_ipd() #0 {
  %1 = load i32, i32* @CVMX_FPA_PACKET_POOL_SIZE, align 4
  %2 = sdiv i32 %1, 8
  %3 = load i32, i32* @CVMX_HELPER_FIRST_MBUFF_SKIP, align 4
  %4 = sdiv i32 %3, 8
  %5 = load i32, i32* @CVMX_HELPER_NOT_FIRST_MBUFF_SKIP, align 4
  %6 = sdiv i32 %5, 8
  %7 = load i32, i32* @CVMX_HELPER_FIRST_MBUFF_SKIP, align 4
  %8 = add nsw i32 %7, 8
  %9 = sdiv i32 %8, 128
  %10 = load i32, i32* @CVMX_HELPER_NOT_FIRST_MBUFF_SKIP, align 4
  %11 = add nsw i32 %10, 8
  %12 = sdiv i32 %11, 128
  %13 = load i32, i32* @CVMX_FPA_WQE_POOL, align 4
  %14 = load i32, i32* @CVMX_IPD_OPC_MODE_STT, align 4
  %15 = load i32, i32* @CVMX_HELPER_ENABLE_BACK_PRESSURE, align 4
  %16 = call i32 @cvmx_ipd_config(i32 %2, i32 %4, i32 %6, i32 %9, i32 %12, i32 %13, i32 %14, i32 %15)
  ret i32 0
}

declare dso_local i32 @cvmx_ipd_config(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
