; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_cpu-imx35.c_mx35_read_cpu_rev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_cpu-imx35.c_mx35_read_cpu_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MX35_IIM_BASE_ADDR = common dso_local global i64 0, align 8
@MXC_IIMSREV = common dso_local global i64 0, align 8
@IMX_CHIP_REVISION_1_0 = common dso_local global i32 0, align 4
@IMX_CHIP_REVISION_2_0 = common dso_local global i32 0, align 4
@IMX_CHIP_REVISION_2_1 = common dso_local global i32 0, align 4
@IMX_CHIP_REVISION_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mx35_read_cpu_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx35_read_cpu_rev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @MX35_IIM_BASE_ADDR, align 8
  %4 = load i64, i64* @MXC_IIMSREV, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @MX35_IO_ADDRESS(i64 %5)
  %7 = call i32 @imx_readl(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %15 [
    i32 0, label %9
    i32 16, label %11
    i32 17, label %13
  ]

9:                                                ; preds = %0
  %10 = load i32, i32* @IMX_CHIP_REVISION_1_0, align 4
  store i32 %10, i32* %1, align 4
  br label %17

11:                                               ; preds = %0
  %12 = load i32, i32* @IMX_CHIP_REVISION_2_0, align 4
  store i32 %12, i32* %1, align 4
  br label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @IMX_CHIP_REVISION_2_1, align 4
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @IMX_CHIP_REVISION_UNKNOWN, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %13, %11, %9
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @imx_readl(i32) #1

declare dso_local i32 @MX35_IO_ADDRESS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
