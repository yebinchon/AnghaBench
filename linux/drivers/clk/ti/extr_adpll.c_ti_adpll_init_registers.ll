; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ADPLL_PLLSS_MMR_LOCK_OFFSET = common dso_local global i64 0, align 8
@ADPLL_PWRCTRL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adpll_data*)* @ti_adpll_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adpll_init_registers(%struct.ti_adpll_data* %0) #0 {
  %2 = alloca %struct.ti_adpll_data*, align 8
  %3 = alloca i32, align 4
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %2, align 8
  %5 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  store i32 8, i32* %3, align 4
  %11 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %2, align 8
  %12 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ADPLL_PLLSS_MMR_LOCK_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ti_adpll_unlock_all(i64 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %2, align 8
  %19 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i64, i64* @ADPLL_PWRCTRL_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %2, align 8
  %27 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  ret i32 0
}

declare dso_local i32 @ti_adpll_unlock_all(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
