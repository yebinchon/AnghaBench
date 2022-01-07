; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_clk_pxa27x_memory_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_clk_pxa27x_memory_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@CCCR = common dso_local global i32 0, align 4
@CCSR = common dso_local global i32 0, align 4
@CCCR_CPDIS_BIT = common dso_local global i32 0, align 4
@CCCR_A_BIT = common dso_local global i32 0, align 4
@PXA_MEM_13Mhz = common dso_local global i32 0, align 4
@PXA_MEM_SYSTEM_BUS = common dso_local global i32 0, align 4
@PXA_MEM_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pxa27x_memory_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pxa27x_memory_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load i32, i32* @CCCR, align 4
  %9 = call i64 @readl(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @CCSR, align 4
  %11 = call i64 @readl(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @CCCR_CPDIS_BIT, align 4
  %14 = shl i32 1, %13
  %15 = sext i32 %14 to i64
  %16 = and i64 %12, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @CCCR_A_BIT, align 4
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = and i64 %18, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @PXA_MEM_13Mhz, align 4
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @PXA_MEM_SYSTEM_BUS, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @PXA_MEM_RUN, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %26
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
