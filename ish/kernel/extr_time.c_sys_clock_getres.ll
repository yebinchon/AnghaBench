; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_clock_getres.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_clock_getres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timespec_ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"clock_getres(%d, %#x)\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_clock_getres(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec_, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @STRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %18 [
    i32 128, label %14
    i32 129, label %16
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @CLOCK_REALTIME, align 4
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @CLOCK_MONOTONIC, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @_EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @clock_getres(i32 %21, %struct.timespec* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @errno_map()
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.timespec_, %struct.timespec_* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.timespec_, %struct.timespec_* %9, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = bitcast %struct.timespec_* %9 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call i64 @user_put(i32 %34, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @_EFAULT, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %25, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @STRACE(i8*, i32, i32) #1

declare dso_local i32 @clock_getres(i32, %struct.timespec*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i64 @user_put(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
