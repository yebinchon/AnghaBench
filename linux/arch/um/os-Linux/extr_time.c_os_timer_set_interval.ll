; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_time.c_os_timer_set_interval.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_time.c_os_timer_set_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerspec = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@UM_NSEC_PER_SEC = common dso_local global i64 0, align 8
@event_high_res_timer = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_timer_set_interval(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.itimerspec, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @UM_NSEC_PER_SEC, align 8
  %7 = udiv i64 %5, %6
  %8 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @UM_NSEC_PER_SEC, align 8
  %12 = urem i64 %10, %11
  %13 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @UM_NSEC_PER_SEC, align 8
  %17 = udiv i64 %15, %16
  %18 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %4, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @UM_NSEC_PER_SEC, align 8
  %22 = urem i64 %20, %21
  %23 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @event_high_res_timer, align 4
  %26 = call i32 @timer_settime(i32 %25, i32 0, %struct.itimerspec* %4, i32* null)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @errno, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
