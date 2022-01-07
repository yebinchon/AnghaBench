; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_clock_is_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_clock_is_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fapll_data = type { i64, i32 }

@FAPLL_MAIN_BP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fapll_data*)* @ti_fapll_clock_is_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_fapll_clock_is_bypass(%struct.fapll_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fapll_data*, align 8
  %4 = alloca i32, align 4
  store %struct.fapll_data* %0, %struct.fapll_data** %3, align 8
  %5 = load %struct.fapll_data*, %struct.fapll_data** %3, align 8
  %6 = getelementptr inbounds %struct.fapll_data, %struct.fapll_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @readl_relaxed(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.fapll_data*, %struct.fapll_data** %3, align 8
  %10 = getelementptr inbounds %struct.fapll_data, %struct.fapll_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @FAPLL_MAIN_BP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FAPLL_MAIN_BP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @readl_relaxed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
