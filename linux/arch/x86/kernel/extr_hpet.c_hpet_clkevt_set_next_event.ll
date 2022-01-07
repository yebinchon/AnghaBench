; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c_hpet_clkevt_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c_hpet_clkevt_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@HPET_COUNTER = common dso_local global i32 0, align 4
@HPET_MIN_CYCLES = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @hpet_clkevt_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_clkevt_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %9 = call %struct.TYPE_2__* @clockevent_to_channel(%struct.clock_event_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @HPET_COUNTER, align 4
  %13 = call i64 @hpet_readl(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @HPET_Tn_CMP(i32 %18)
  %20 = call i32 @hpet_writel(i64 %17, i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @HPET_COUNTER, align 4
  %23 = call i64 @hpet_readl(i32 %22)
  %24 = sub nsw i64 %21, %23
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @HPET_MIN_CYCLES, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ETIME, align 4
  %30 = sub nsw i32 0, %29
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 0, %31 ]
  ret i32 %33
}

declare dso_local %struct.TYPE_2__* @clockevent_to_channel(%struct.clock_event_device*) #1

declare dso_local i64 @hpet_readl(i32) #1

declare dso_local i32 @hpet_writel(i64, i32) #1

declare dso_local i32 @HPET_Tn_CMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
