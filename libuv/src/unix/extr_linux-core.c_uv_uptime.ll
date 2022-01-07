; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv_uptime.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { double }

@uv_uptime.no_clock_boottime = internal global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@CLOCK_BOOTTIME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_uptime(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca i32, align 4
  store double* %0, double** %3, align 8
  %6 = load volatile i32, i32* @uv_uptime.no_clock_boottime, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %20, %8
  %10 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %11 = call i32 @clock_gettime(i32 %10, %struct.timespec* %4)
  store i32 %11, i32* %5, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @CLOCK_BOOTTIME, align 4
  %14 = call i32 @clock_gettime(i32 %13, %struct.timespec* %4)
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EINVAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store volatile i32 1, i32* @uv_uptime.no_clock_boottime, align 4
  br label %9

21:                                               ; preds = %16, %12
  br label %22

22:                                               ; preds = %21, %9
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @errno, align 8
  %27 = call i32 @UV__ERR(i64 %26)
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load double*, double** %3, align 8
  store double %30, double* %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @UV__ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
