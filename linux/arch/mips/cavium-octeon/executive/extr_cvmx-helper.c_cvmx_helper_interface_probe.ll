; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c_cvmx_helper_interface_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c_cvmx_helper_interface_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_SYNCWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_interface_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @cvmx_helper_interface_enumerate(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @cvmx_helper_interface_get_mode(i32 %5)
  switch i32 %6, label %26 [
    i32 137, label %7
    i32 133, label %7
    i32 128, label %8
    i32 131, label %11
    i32 136, label %11
    i32 129, label %14
    i32 130, label %17
    i32 132, label %17
    i32 134, label %20
    i32 135, label %23
  ]

7:                                                ; preds = %1, %1
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @__cvmx_helper_xaui_probe(i32 %9)
  br label %26

11:                                               ; preds = %1, %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @__cvmx_helper_rgmii_probe(i32 %12)
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @__cvmx_helper_spi_probe(i32 %15)
  br label %26

17:                                               ; preds = %1, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @__cvmx_helper_sgmii_probe(i32 %18)
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @__cvmx_helper_npi_probe(i32 %21)
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @__cvmx_helper_loop_probe(i32 %24)
  br label %26

26:                                               ; preds = %1, %23, %20, %17, %14, %11, %8, %7
  %27 = load i32, i32* @CVMX_SYNCWS, align 4
  ret i32 0
}

declare dso_local i32 @cvmx_helper_interface_enumerate(i32) #1

declare dso_local i32 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @__cvmx_helper_xaui_probe(i32) #1

declare dso_local i32 @__cvmx_helper_rgmii_probe(i32) #1

declare dso_local i32 @__cvmx_helper_spi_probe(i32) #1

declare dso_local i32 @__cvmx_helper_sgmii_probe(i32) #1

declare dso_local i32 @__cvmx_helper_npi_probe(i32) #1

declare dso_local i32 @__cvmx_helper_loop_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
