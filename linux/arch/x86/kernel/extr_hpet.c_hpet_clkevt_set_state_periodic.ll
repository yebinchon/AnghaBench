; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c_hpet_clkevt_set_state_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c_hpet_clkevt_set_state_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HPET_COUNTER = common dso_local global i32 0, align 4
@HPET_TN_ENABLE = common dso_local global i32 0, align 4
@HPET_TN_PERIODIC = common dso_local global i32 0, align 4
@HPET_TN_SETVAL = common dso_local global i32 0, align 4
@HPET_TN_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @hpet_clkevt_set_state_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_clkevt_set_state_periodic(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %9 = call %struct.TYPE_2__* @clockevent_to_channel(%struct.clock_event_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = call i32 (...) @hpet_stop_counter()
  %13 = load i32, i32* @NSEC_PER_SEC, align 4
  %14 = load i32, i32* @HZ, align 4
  %15 = sdiv i32 %13, %14
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %21 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @HPET_COUNTER, align 4
  %26 = call i32 @hpet_readl(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @HPET_Tn_CFG(i32 %30)
  %32 = call i32 @hpet_readl(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @HPET_TN_ENABLE, align 4
  %34 = load i32, i32* @HPET_TN_PERIODIC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @HPET_TN_SETVAL, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @HPET_TN_32BIT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @HPET_Tn_CFG(i32 %43)
  %45 = call i32 @hpet_writel(i32 %42, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @HPET_Tn_CMP(i32 %47)
  %49 = call i32 @hpet_writel(i32 %46, i32 %48)
  %50 = call i32 @udelay(i32 1)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @HPET_Tn_CMP(i32 %52)
  %54 = call i32 @hpet_writel(i32 %51, i32 %53)
  %55 = call i32 (...) @hpet_start_counter()
  %56 = call i32 (...) @hpet_print_config()
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @clockevent_to_channel(%struct.clock_event_device*) #1

declare dso_local i32 @hpet_stop_counter(...) #1

declare dso_local i32 @hpet_readl(i32) #1

declare dso_local i32 @HPET_Tn_CFG(i32) #1

declare dso_local i32 @hpet_writel(i32, i32) #1

declare dso_local i32 @HPET_Tn_CMP(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hpet_start_counter(...) #1

declare dso_local i32 @hpet_print_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
