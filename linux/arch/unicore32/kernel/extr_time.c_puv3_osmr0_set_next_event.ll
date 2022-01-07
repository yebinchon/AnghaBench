; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_time.c_puv3_osmr0_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_time.c_puv3_osmr0_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@OST_OIER = common dso_local global i32 0, align 4
@OST_OIER_E0 = common dso_local global i64 0, align 8
@OST_OSCR = common dso_local global i32 0, align 4
@OST_OSMR0 = common dso_local global i32 0, align 4
@MIN_OSCR_DELTA = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @puv3_osmr0_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_osmr0_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %7 = load i32, i32* @OST_OIER, align 4
  %8 = call i64 @readl(i32 %7)
  %9 = load i64, i64* @OST_OIER_E0, align 8
  %10 = or i64 %8, %9
  %11 = load i32, i32* @OST_OIER, align 4
  %12 = call i32 @writel(i64 %10, i32 %11)
  %13 = load i32, i32* @OST_OSCR, align 4
  %14 = call i64 @readl(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @OST_OSMR0, align 4
  %19 = call i32 @writel(i64 %17, i32 %18)
  %20 = load i32, i32* @OST_OSCR, align 4
  %21 = call i64 @readl(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @MIN_OSCR_DELTA, align 4
  %27 = icmp sle i32 %25, %26
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

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
