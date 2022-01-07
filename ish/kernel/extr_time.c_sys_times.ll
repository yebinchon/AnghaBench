; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_times.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tms_ = type { i8*, i8*, i8*, i8* }
%struct.rusage_ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"times(0x%x)\00", align 1
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_times(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.tms_, align 8
  %5 = alloca %struct.rusage_, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @STRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = call i64 (...) @rusage_get_current()
  %12 = bitcast %struct.rusage_* %5 to i64*
  store i64 %11, i64* %12, align 4
  %13 = getelementptr inbounds %struct.rusage_, %struct.rusage_* %5, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @clock_from_timeval(i32 %14)
  %16 = getelementptr inbounds %struct.tms_, %struct.tms_* %4, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.rusage_, %struct.rusage_* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @clock_from_timeval(i32 %18)
  %20 = getelementptr inbounds %struct.tms_, %struct.tms_* %4, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.tms_, %struct.tms_* %4, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.tms_, %struct.tms_* %4, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.tms_, %struct.tms_* %4, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.tms_, %struct.tms_* %4, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @user_put(i64 %27, %struct.tms_* byval(%struct.tms_) align 8 %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %10
  %31 = load i32, i32* @_EFAULT, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %10
  br label %33

33:                                               ; preds = %32, %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @STRACE(i8*, i64) #1

declare dso_local i64 @rusage_get_current(...) #1

declare dso_local i8* @clock_from_timeval(i32) #1

declare dso_local i64 @user_put(i64, %struct.tms_* byval(%struct.tms_) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
