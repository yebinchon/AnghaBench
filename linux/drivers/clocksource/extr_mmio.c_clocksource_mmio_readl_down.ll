; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_mmio.c_clocksource_mmio_readl_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_mmio.c_clocksource_mmio_readl_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clocksource_mmio_readl_down(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %3 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %4 = call %struct.TYPE_2__* @to_mmio_clksrc(%struct.clocksource* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @readl_relaxed(i32 %6)
  %8 = trunc i64 %7 to i32
  %9 = xor i32 %8, -1
  %10 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %11 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %9, %12
  ret i32 %13
}

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local %struct.TYPE_2__* @to_mmio_clksrc(%struct.clocksource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
