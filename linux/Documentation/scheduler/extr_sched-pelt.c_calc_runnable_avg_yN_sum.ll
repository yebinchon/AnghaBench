; ModuleID = '/home/carl/AnghaBench/linux/Documentation/scheduler/extr_sched-pelt.c_calc_runnable_avg_yN_sum.c'
source_filename = "/home/carl/AnghaBench/linux/Documentation/scheduler/extr_sched-pelt.c_calc_runnable_avg_yN_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"static const u32 runnable_avg_yN_sum[] = {\0A\09    0,\00", align 1
@HALFLIFE = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4
@sum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%5d,\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_runnable_avg_yN_sum() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %3

3:                                                ; preds = %30, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @HALFLIFE, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @y, align 4
  %12 = load i32, i32* @sum, align 4
  %13 = mul nsw i32 %12, %11
  store i32 %13, i32* @sum, align 4
  br label %21

14:                                               ; preds = %7
  %15 = load i32, i32* @sum, align 4
  %16 = load i32, i32* @y, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* @y, align 4
  %19 = mul nsw i32 1024, %18
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* @sum, align 4
  br label %21

21:                                               ; preds = %14, %10
  %22 = load i32, i32* %1, align 4
  %23 = srem i32 %22, 11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* @sum, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %3

33:                                               ; preds = %3
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
