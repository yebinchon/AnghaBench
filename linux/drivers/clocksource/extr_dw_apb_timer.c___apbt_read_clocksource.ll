; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_dw_apb_timer.c___apbt_read_clocksource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_dw_apb_timer.c___apbt_read_clocksource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.dw_apb_clocksource = type { i32 }

@APBTMR_N_CURRENT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocksource*)* @__apbt_read_clocksource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__apbt_read_clocksource(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_apb_clocksource*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %5 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %6 = call %struct.dw_apb_clocksource* @clocksource_to_dw_apb_clocksource(%struct.clocksource* %5)
  store %struct.dw_apb_clocksource* %6, %struct.dw_apb_clocksource** %4, align 8
  %7 = load %struct.dw_apb_clocksource*, %struct.dw_apb_clocksource** %4, align 8
  %8 = getelementptr inbounds %struct.dw_apb_clocksource, %struct.dw_apb_clocksource* %7, i32 0, i32 0
  %9 = load i32, i32* @APBTMR_N_CURRENT_VALUE, align 4
  %10 = call i32 @apbt_readl_relaxed(i32* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = xor i32 %11, -1
  ret i32 %12
}

declare dso_local %struct.dw_apb_clocksource* @clocksource_to_dw_apb_clocksource(%struct.clocksource*) #1

declare dso_local i32 @apbt_readl_relaxed(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
