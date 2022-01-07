; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-imx-gpt.c_imx21_gpt_irq_acknowledge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-imx-gpt.c_imx21_gpt_irq_acknowledge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_timer = type { i64 }

@MX2_TSTAT_CAPT = common dso_local global i32 0, align 4
@MX2_TSTAT_COMP = common dso_local global i32 0, align 4
@MX1_2_TSTAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_timer*)* @imx21_gpt_irq_acknowledge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx21_gpt_irq_acknowledge(%struct.imx_timer* %0) #0 {
  %2 = alloca %struct.imx_timer*, align 8
  store %struct.imx_timer* %0, %struct.imx_timer** %2, align 8
  %3 = load i32, i32* @MX2_TSTAT_CAPT, align 4
  %4 = load i32, i32* @MX2_TSTAT_COMP, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.imx_timer*, %struct.imx_timer** %2, align 8
  %7 = getelementptr inbounds %struct.imx_timer, %struct.imx_timer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MX1_2_TSTAT, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel_relaxed(i32 %5, i64 %10)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
