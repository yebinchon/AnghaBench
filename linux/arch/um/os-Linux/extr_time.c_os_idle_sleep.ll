; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_time.c_os_idle_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_time.c_os_idle_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@UM_NSEC_PER_SEC = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_idle_sleep(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec, align 8
  store i64 %0, i64* %2, align 8
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @UM_NSEC_PER_SEC, align 8
  %7 = udiv i64 %5, %6
  store i64 %7, i64* %4, align 8
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @UM_NSEC_PER_SEC, align 8
  %11 = urem i64 %9, %10
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %13 = call i64 @clock_nanosleep(i32 %12, i32 0, %struct.timespec* %3, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @deliver_alarm()
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

declare dso_local i64 @clock_nanosleep(i32, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @deliver_alarm(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
