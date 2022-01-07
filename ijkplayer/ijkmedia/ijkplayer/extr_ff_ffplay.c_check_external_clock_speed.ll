; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_check_external_clock_speed.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_check_external_clock_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { double }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@EXTERNAL_CLOCK_MIN_FRAMES = common dso_local global i64 0, align 8
@EXTERNAL_CLOCK_SPEED_MIN = common dso_local global i32 0, align 4
@EXTERNAL_CLOCK_SPEED_STEP = common dso_local global double 0.000000e+00, align 8
@EXTERNAL_CLOCK_MAX_FRAMES = common dso_local global i64 0, align 8
@EXTERNAL_CLOCK_SPEED_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @check_external_clock_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_external_clock_speed(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca double, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EXTERNAL_CLOCK_MIN_FRAMES, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EXTERNAL_CLOCK_MIN_FRAMES, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %20, %8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* @EXTERNAL_CLOCK_SPEED_MIN, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = load double, double* @EXTERNAL_CLOCK_SPEED_STEP, align 8
  %36 = fsub double %34, %35
  %37 = call double @FFMAX(i32 %30, double %36)
  %38 = call i32 @set_clock_speed(%struct.TYPE_9__* %29, double %37)
  br label %98

39:                                               ; preds = %20, %15
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EXTERNAL_CLOCK_MAX_FRAMES, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %44, %39
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EXTERNAL_CLOCK_MAX_FRAMES, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %56, %51
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* @EXTERNAL_CLOCK_SPEED_MAX, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = load double, double* @EXTERNAL_CLOCK_SPEED_STEP, align 8
  %72 = fadd double %70, %71
  %73 = call double @FFMIN(i32 %66, double %72)
  %74 = call i32 @set_clock_speed(%struct.TYPE_9__* %65, double %73)
  br label %97

75:                                               ; preds = %56, %44
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  store double %79, double* %3, align 8
  %80 = load double, double* %3, align 8
  %81 = fcmp une double %80, 1.000000e+00
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load double, double* %3, align 8
  %86 = load double, double* @EXTERNAL_CLOCK_SPEED_STEP, align 8
  %87 = load double, double* %3, align 8
  %88 = fsub double 1.000000e+00, %87
  %89 = fmul double %86, %88
  %90 = load double, double* %3, align 8
  %91 = fsub double 1.000000e+00, %90
  %92 = call double @llvm.fabs.f64(double %91)
  %93 = fdiv double %89, %92
  %94 = fadd double %85, %93
  %95 = call i32 @set_clock_speed(%struct.TYPE_9__* %84, double %94)
  br label %96

96:                                               ; preds = %82, %75
  br label %97

97:                                               ; preds = %96, %63
  br label %98

98:                                               ; preds = %97, %27
  ret void
}

declare dso_local i32 @set_clock_speed(%struct.TYPE_9__*, double) #1

declare dso_local double @FFMAX(i32, double) #1

declare dso_local double @FFMIN(i32, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
