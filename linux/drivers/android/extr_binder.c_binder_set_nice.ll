; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_set_nice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_set_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@RLIMIT_NICE = common dso_local global i32 0, align 4
@BINDER_DEBUG_PRIORITY_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%d: nice value %ld not allowed use %ld instead\0A\00", align 1
@MAX_NICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%d RLIMIT_NICE not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @binder_set_nice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_set_nice(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @can_nice(%struct.TYPE_4__* %4, i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @set_user_nice(%struct.TYPE_4__* %9, i64 %10)
  br label %35

12:                                               ; preds = %1
  %13 = load i32, i32* @RLIMIT_NICE, align 4
  %14 = call i32 @rlimit(i32 %13)
  %15 = call i64 @rlimit_to_nice(i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i32, i32* @BINDER_DEBUG_PRIORITY_CAP, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @binder_debug(i32 %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %20, i64 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @set_user_nice(%struct.TYPE_4__* %23, i64 %24)
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @MAX_NICE, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %12
  br label %35

30:                                               ; preds = %12
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @binder_user_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %29, %8
  ret void
}

declare dso_local i64 @can_nice(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @set_user_nice(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @rlimit_to_nice(i32) #1

declare dso_local i32 @rlimit(i32) #1

declare dso_local i32 @binder_debug(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @binder_user_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
