; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-cns3xxx/extr_core.c_cns3xxx_set_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-cns3xxx/extr_core.c_cns3xxx_set_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@cns3xxx_tmr1 = common dso_local global i64 0, align 8
@TIMER1_2_CONTROL_OFFSET = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TIMER1_AUTO_RELOAD_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @cns3xxx_set_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns3xxx_set_periodic(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %6 = load i64, i64* @cns3xxx_tmr1, align 8
  %7 = load i64, i64* @TIMER1_2_CONTROL_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @readl(i64 %8)
  store i64 %9, i64* %3, align 8
  %10 = call i32 (...) @cns3xxx_cpu_clock()
  %11 = sdiv i32 %10, 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 %12, 20
  %14 = load i32, i32* @HZ, align 4
  %15 = mul nsw i32 3, %14
  %16 = sdiv i32 %13, %15
  %17 = mul nsw i32 %16, 151552
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @cns3xxx_tmr1, align 8
  %21 = load i64, i64* @TIMER1_AUTO_RELOAD_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i64 %19, i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = or i64 %24, 517
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @cns3xxx_tmr1, align 8
  %28 = load i64, i64* @TIMER1_2_CONTROL_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i64 %26, i64 %29)
  ret i32 0
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @cns3xxx_cpu_clock(...) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
