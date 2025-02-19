; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_get_mode_cn7xxx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_get_mode_cn7xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_inf_mode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CVMX_HELPER_INTERFACE_MODE_DISABLED = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_XAUI = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_NPI = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_get_mode_cn7xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_get_mode_cn7xxx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_gmxx_inf_mode, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @CVMX_GMXX_INF_MODE(i32 %5)
  %7 = call i32 @cvmx_read_csr(i32 %6)
  %8 = bitcast %union.cvmx_gmxx_inf_mode* %4 to i32*
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %22
    i32 3, label %24
    i32 4, label %26
  ]

10:                                               ; preds = %1, %1
  %11 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %16
    i32 3, label %18
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %15, i32* %2, align 4
  br label %30

16:                                               ; preds = %10, %10
  %17 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %10
  %19 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 4
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %10
  %21 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_NPI, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_LOOP, align 4
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %26, %24, %22, %20, %18, %16, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_INF_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
