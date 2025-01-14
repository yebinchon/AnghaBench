; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_hardware_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_hardware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__cvmx_helper_sgmii_hardware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_sgmii_hardware_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @__cvmx_helper_setup_gmx(i32 %7, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @cvmx_helper_get_ipd_port(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @__cvmx_helper_sgmii_hardware_init_one_time(i32 %18, i32 %19)
  %21 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @__cvmx_helper_sgmii_link_get(i32 %28)
  %30 = call i32 @__cvmx_helper_sgmii_link_set(i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %26, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %10

35:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @__cvmx_helper_setup_gmx(i32, i32) #1

declare dso_local i32 @cvmx_helper_get_ipd_port(i32, i32) #1

declare dso_local i32 @__cvmx_helper_sgmii_hardware_init_one_time(i32, i32) #1

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @__cvmx_helper_sgmii_link_set(i32, i32) #1

declare dso_local i32 @__cvmx_helper_sgmii_link_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
