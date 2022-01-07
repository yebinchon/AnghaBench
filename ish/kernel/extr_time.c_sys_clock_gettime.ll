; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_clock_gettime.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_clock_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.rusage_ = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec_ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"clock_gettime(%d, 0x%x)\00", align 1
@CLOCK_PROCESS_CPUTIME_ID_ = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_clock_gettime(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.rusage_, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec_, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @STRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CLOCK_PROCESS_CPUTIME_ID_, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = call i64 (...) @rusage_get_current()
  %19 = getelementptr inbounds %struct.rusage_, %struct.rusage_* %7, i32 0, i32 0
  %20 = bitcast %struct.TYPE_2__* %19 to i64*
  store i64 %18, i64* %20, align 4
  %21 = getelementptr inbounds %struct.rusage_, %struct.rusage_* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.rusage_, %struct.rusage_* %7, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  br label %46

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %36 [
    i32 128, label %32
    i32 129, label %34
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @CLOCK_REALTIME, align 4
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @CLOCK_MONOTONIC, align 4
  store i32 %35, i32* %8, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @_EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %61

38:                                               ; preds = %34, %32
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @clock_gettime(i32 %39, %struct.timespec* %6)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @errno_map()
  store i32 %44, i32* %3, align 4
  br label %61

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %17
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.timespec_, %struct.timespec_* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.timespec_, %struct.timespec_* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = bitcast %struct.timespec_* %10 to i64*
  %55 = load i64, i64* %54, align 4
  %56 = call i64 @user_put(i32 %53, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @_EFAULT, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %58, %43, %36
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @STRACE(i8*, i32, i32) #1

declare dso_local i64 @rusage_get_current(...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i64 @user_put(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
