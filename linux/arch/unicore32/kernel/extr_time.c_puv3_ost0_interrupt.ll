; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_time.c_puv3_ost0_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_time.c_puv3_ost0_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 (%struct.clock_event_device*)* }

@OST_OIER = common dso_local global i32 0, align 4
@OST_OIER_E0 = common dso_local global i32 0, align 4
@OST_OSSR = common dso_local global i32 0, align 4
@OST_OSSR_M0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @puv3_ost0_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_ost0_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.clock_event_device*
  store %struct.clock_event_device* %7, %struct.clock_event_device** %5, align 8
  %8 = load i32, i32* @OST_OIER, align 4
  %9 = call i32 @readl(i32 %8)
  %10 = load i32, i32* @OST_OIER_E0, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load i32, i32* @OST_OIER, align 4
  %14 = call i32 @writel(i32 %12, i32 %13)
  %15 = load i32, i32* @OST_OSSR, align 4
  %16 = call i32 @readl(i32 %15)
  %17 = load i32, i32* @OST_OSSR_M0, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* @OST_OSSR, align 4
  %21 = call i32 @writel(i32 %19, i32 %20)
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %23 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %22, i32 0, i32 0
  %24 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %23, align 8
  %25 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %26 = call i32 %24(%struct.clock_event_device* %25)
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %27
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
