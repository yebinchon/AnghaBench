; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_renesas-ostm.c_ostm_timer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_renesas-ostm.c_ostm_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ostm_device = type { i64 }

@OSTM_TE = common dso_local global i64 0, align 8
@TE = common dso_local global i32 0, align 4
@TT = common dso_local global i32 0, align 4
@OSTM_TT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ostm_device*)* @ostm_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ostm_timer_stop(%struct.ostm_device* %0) #0 {
  %2 = alloca %struct.ostm_device*, align 8
  store %struct.ostm_device* %0, %struct.ostm_device** %2, align 8
  %3 = load %struct.ostm_device*, %struct.ostm_device** %2, align 8
  %4 = getelementptr inbounds %struct.ostm_device, %struct.ostm_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @OSTM_TE, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readb(i64 %7)
  %9 = load i32, i32* @TE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load i32, i32* @TT, align 4
  %14 = load %struct.ostm_device*, %struct.ostm_device** %2, align 8
  %15 = getelementptr inbounds %struct.ostm_device, %struct.ostm_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OSTM_TT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writeb(i32 %13, i64 %18)
  br label %20

20:                                               ; preds = %30, %12
  %21 = load %struct.ostm_device*, %struct.ostm_device** %2, align 8
  %22 = getelementptr inbounds %struct.ostm_device, %struct.ostm_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OSTM_TE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readb(i64 %25)
  %27 = load i32, i32* @TE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %20

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
