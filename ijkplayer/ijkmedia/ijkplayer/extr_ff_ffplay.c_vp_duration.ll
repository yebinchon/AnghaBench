; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_vp_duration.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_vp_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double }
%struct.TYPE_7__ = type { i64, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @vp_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @vp_duration(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = fsub double %19, %22
  store double %23, double* %8, align 8
  %24 = load double, double* %8, align 8
  %25 = call i64 @isnan(double %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %16
  %28 = load double, double* %8, align 8
  %29 = fcmp ole double %28, 0.000000e+00
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load double, double* %8, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fcmp ogt double %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %27, %16
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load double, double* %38, align 8
  store double %39, double* %4, align 8
  br label %43

40:                                               ; preds = %30
  %41 = load double, double* %8, align 8
  store double %41, double* %4, align 8
  br label %43

42:                                               ; preds = %3
  store double 0.000000e+00, double* %4, align 8
  br label %43

43:                                               ; preds = %42, %40, %36
  %44 = load double, double* %4, align 8
  ret double %44
}

declare dso_local i64 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
