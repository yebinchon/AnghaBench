; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_sec_etc.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_sec_etc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@WL_MODE_FILE = common dso_local global i64 0, align 8
@WL_MODE_MASK = common dso_local global i64 0, align 8
@STATUS_CRACKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @status_get_sec_etc(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WL_MODE_FILE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WL_MODE_MASK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23, %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @STATUS_CRACKED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = call double @status_get_progress_cur_relative_skip(%struct.TYPE_11__* %36)
  store double %37, double* %6, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = call double @status_get_progress_end_relative_skip(%struct.TYPE_11__* %38)
  store double %39, double* %7, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = call double @status_get_progress_ignore(%struct.TYPE_11__* %40)
  store double %41, double* %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = call double @status_get_hashes_msec_all(%struct.TYPE_11__* %42)
  store double %43, double* %9, align 8
  %44 = load double, double* %9, align 8
  %45 = fcmp ogt double %44, 0.000000e+00
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load double, double* %7, align 8
  %48 = load double, double* %6, align 8
  %49 = fsub double %47, %48
  store double %49, double* %10, align 8
  %50 = load double, double* %10, align 8
  %51 = load double, double* %8, align 8
  %52 = fsub double %50, %51
  %53 = load double, double* %9, align 8
  %54 = fdiv double %52, %53
  store double %54, double* %11, align 8
  %55 = load double, double* %11, align 8
  %56 = fdiv double %55, 1.000000e+03
  store double %56, double* %5, align 8
  br label %57

57:                                               ; preds = %46, %35
  br label %58

58:                                               ; preds = %57, %29
  br label %59

59:                                               ; preds = %58, %23
  %60 = load double, double* %5, align 8
  ret double %60
}

declare dso_local double @status_get_progress_cur_relative_skip(%struct.TYPE_11__*) #1

declare dso_local double @status_get_progress_end_relative_skip(%struct.TYPE_11__*) #1

declare dso_local double @status_get_progress_ignore(%struct.TYPE_11__*) #1

declare dso_local double @status_get_hashes_msec_all(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
