; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-timer.c_rt_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-timer.c_rt_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@PI_RT_COUNT = common dso_local global i32 0, align 4
@PI_RT_COMPARE_A = common dso_local global i64 0, align 8
@PI_COUNT_OFFSET = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @rt_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @cputoslice(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @PI_RT_COUNT, align 4
  %12 = call i64 @LOCAL_HUB_L(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* @PI_RT_COMPARE_A, align 8
  %17 = load i32, i32* @PI_COUNT_OFFSET, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @LOCAL_HUB_S(i64 %21, i64 %22)
  %24 = load i32, i32* @PI_RT_COUNT, align 4
  %25 = call i64 @LOCAL_HUB_L(i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = icmp uge i64 %25, %26
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

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cputoslice(i32) #1

declare dso_local i64 @LOCAL_HUB_L(i32) #1

declare dso_local i32 @LOCAL_HUB_S(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
