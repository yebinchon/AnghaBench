; ModuleID = '/home/carl/AnghaBench/linux/Documentation/scheduler/extr_sched-pelt.c_calc_converged_max.c'
source_filename = "/home/carl/AnghaBench/linux/Documentation/scheduler/extr_sched-pelt.c_calc_converged_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@y = common dso_local global i64 0, align 8
@n = common dso_local global i32 0, align 4
@max = common dso_local global i64 0, align 8
@SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"#define LOAD_AVG_PERIOD %d\0A\00", align 1
@HALFLIFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"#define LOAD_AVG_MAX %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_converged_max() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %3 = load i64, i64* @y, align 8
  %4 = mul i64 4294967295, %3
  store i64 %4, i64* %2, align 8
  br label %5

5:                                                ; preds = %22, %0
  %6 = load i32, i32* @n, align 4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i64, i64* @max, align 8
  %10 = load i64, i64* %2, align 8
  %11 = mul nsw i64 %9, %10
  %12 = load i64, i64* @SHIFT, align 8
  %13 = ashr i64 %11, %12
  %14 = add nsw i64 %13, 1024
  store i64 %14, i64* @max, align 8
  br label %15

15:                                               ; preds = %8, %5
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @max, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %25

20:                                               ; preds = %15
  %21 = load i64, i64* @max, align 8
  store i64 %21, i64* %1, align 8
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* @n, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @n, align 4
  br label %5

25:                                               ; preds = %19
  %26 = load i32, i32* @n, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @n, align 4
  %28 = load i32, i32* @HALFLIFE, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* @max, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  ret void
}

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
