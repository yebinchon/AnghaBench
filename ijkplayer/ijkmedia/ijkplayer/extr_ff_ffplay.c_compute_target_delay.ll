; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_compute_target_delay.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_compute_target_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { double, double }
%struct.TYPE_9__ = type { i32 }

@AV_SYNC_VIDEO_MASTER = common dso_local global i64 0, align 8
@AV_SYNC_THRESHOLD_MIN = common dso_local global i32 0, align 4
@AV_SYNC_THRESHOLD_MAX = common dso_local global i32 0, align 4
@AV_NOSYNC_THRESHOLD = common dso_local global i64 0, align 8
@AV_SYNC_FRAMEDUP_THRESHOLD = common dso_local global double 0.000000e+00, align 8
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_10__*, double, %struct.TYPE_9__*)* @compute_target_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_target_delay(%struct.TYPE_10__* %0, double %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store double %1, double* %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store double 0.000000e+00, double* %8, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = call i64 @get_master_sync_type(%struct.TYPE_9__* %9)
  %11 = load i64, i64* @AV_SYNC_VIDEO_MASTER, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = call double @get_clock(i32* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = call double @get_master_clock(%struct.TYPE_9__* %17)
  %19 = fsub double %16, %18
  store double %19, double* %8, align 8
  %20 = load i32, i32* @AV_SYNC_THRESHOLD_MIN, align 4
  %21 = load i32, i32* @AV_SYNC_THRESHOLD_MAX, align 4
  %22 = load double, double* %5, align 8
  %23 = call double @FFMIN(i32 %21, double %22)
  %24 = call double @FFMAX(i32 %20, double %23)
  store double %24, double* %7, align 8
  %25 = load double, double* %8, align 8
  %26 = call i32 @isnan(double %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %65, label %28

28:                                               ; preds = %13
  %29 = load double, double* %8, align 8
  %30 = call i64 @fabs(double %29)
  %31 = load i64, i64* @AV_NOSYNC_THRESHOLD, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load double, double* %8, align 8
  %35 = load double, double* %7, align 8
  %36 = fneg double %35
  %37 = fcmp ole double %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load double, double* %5, align 8
  %40 = load double, double* %8, align 8
  %41 = fadd double %39, %40
  %42 = call double @FFMAX(i32 0, double %41)
  store double %42, double* %5, align 8
  br label %64

43:                                               ; preds = %33
  %44 = load double, double* %8, align 8
  %45 = load double, double* %7, align 8
  %46 = fcmp oge double %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load double, double* %5, align 8
  %49 = load double, double* @AV_SYNC_FRAMEDUP_THRESHOLD, align 8
  %50 = fcmp ogt double %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load double, double* %5, align 8
  %53 = load double, double* %8, align 8
  %54 = fadd double %52, %53
  store double %54, double* %5, align 8
  br label %63

55:                                               ; preds = %47, %43
  %56 = load double, double* %8, align 8
  %57 = load double, double* %7, align 8
  %58 = fcmp oge double %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load double, double* %5, align 8
  %61 = fmul double 2.000000e+00, %60
  store double %61, double* %5, align 8
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %38
  br label %65

65:                                               ; preds = %64, %28, %13
  br label %66

66:                                               ; preds = %65, %3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load double, double* %5, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store double %70, double* %73, align 8
  %74 = load double, double* %8, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store double %74, double* %77, align 8
  br label %78

78:                                               ; preds = %69, %66
  %79 = load double, double* %5, align 8
  ret double %79
}

declare dso_local i64 @get_master_sync_type(%struct.TYPE_9__*) #1

declare dso_local double @get_clock(i32*) #1

declare dso_local double @get_master_clock(%struct.TYPE_9__*) #1

declare dso_local double @FFMAX(i32, double) #1

declare dso_local double @FFMIN(i32, double) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
