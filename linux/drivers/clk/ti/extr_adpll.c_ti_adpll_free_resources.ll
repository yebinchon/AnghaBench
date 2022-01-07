; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { %struct.ti_adpll_clock* }
%struct.ti_adpll_clock = type { i32, i32 (i32)*, i64 }

@TI_ADPLL_M3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_adpll_data*)* @ti_adpll_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_adpll_free_resources(%struct.ti_adpll_data* %0) #0 {
  %2 = alloca %struct.ti_adpll_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_adpll_clock*, align 8
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %2, align 8
  %5 = load i32, i32* @TI_ADPLL_M3, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %49, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %6
  %10 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %2, align 8
  %11 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %10, i32 0, i32 0
  %12 = load %struct.ti_adpll_clock*, %struct.ti_adpll_clock** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ti_adpll_clock, %struct.ti_adpll_clock* %12, i64 %14
  store %struct.ti_adpll_clock* %15, %struct.ti_adpll_clock** %4, align 8
  %16 = load %struct.ti_adpll_clock*, %struct.ti_adpll_clock** %4, align 8
  %17 = icmp ne %struct.ti_adpll_clock* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = load %struct.ti_adpll_clock*, %struct.ti_adpll_clock** %4, align 8
  %20 = getelementptr inbounds %struct.ti_adpll_clock, %struct.ti_adpll_clock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IS_ERR_OR_NULL(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %9
  br label %49

25:                                               ; preds = %18
  %26 = load %struct.ti_adpll_clock*, %struct.ti_adpll_clock** %4, align 8
  %27 = getelementptr inbounds %struct.ti_adpll_clock, %struct.ti_adpll_clock* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ti_adpll_clock*, %struct.ti_adpll_clock** %4, align 8
  %32 = getelementptr inbounds %struct.ti_adpll_clock, %struct.ti_adpll_clock* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @clkdev_drop(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.ti_adpll_clock*, %struct.ti_adpll_clock** %4, align 8
  %37 = getelementptr inbounds %struct.ti_adpll_clock, %struct.ti_adpll_clock* %36, i32 0, i32 1
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = icmp ne i32 (i32)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.ti_adpll_clock*, %struct.ti_adpll_clock** %4, align 8
  %42 = getelementptr inbounds %struct.ti_adpll_clock, %struct.ti_adpll_clock* %41, i32 0, i32 1
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = load %struct.ti_adpll_clock*, %struct.ti_adpll_clock** %4, align 8
  %45 = getelementptr inbounds %struct.ti_adpll_clock, %struct.ti_adpll_clock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %43(i32 %46)
  br label %48

48:                                               ; preds = %40, %35
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %3, align 4
  br label %6

52:                                               ; preds = %6
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @clkdev_drop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
