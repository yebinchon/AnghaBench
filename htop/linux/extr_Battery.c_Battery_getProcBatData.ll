; ModuleID = '/home/carl/AnghaBench/htop/linux/extr_Battery.c_Battery_getProcBatData.c'
source_filename = "/home/carl/AnghaBench/htop/linux/extr_Battery.c_Battery_getProcBatData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double ()* @Battery_getProcBatData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @Battery_getProcBatData() #0 {
  %1 = alloca double, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @parseBatInfo(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 3, i32 4)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store double 0.000000e+00, double* %1, align 8
  br label %20

8:                                                ; preds = %0
  %9 = call i64 @parseBatInfo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5, i32 3)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store double 0.000000e+00, double* %1, align 8
  br label %20

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = uitofp i64 %14 to double
  %16 = fmul double %15, 1.000000e+02
  %17 = load i64, i64* %2, align 8
  %18 = uitofp i64 %17 to double
  %19 = fdiv double %16, %18
  store double %19, double* %1, align 8
  br label %20

20:                                               ; preds = %13, %12, %7
  %21 = load double, double* %1, align 8
  ret double %21
}

declare dso_local i64 @parseBatInfo(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
