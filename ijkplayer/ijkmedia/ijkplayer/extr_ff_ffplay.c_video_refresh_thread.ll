; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_video_refresh_thread.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_video_refresh_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@REFRESH_RATE = common dso_local global double 0.000000e+00, align 8
@SHOW_MODE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @video_refresh_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_refresh_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  br label %11

11:                                               ; preds = %46, %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = load double, double* %5, align 8
  %19 = fcmp ogt double %18, 0.000000e+00
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load double, double* %5, align 8
  %22 = fmul double %21, 1.000000e+06
  %23 = fptosi double %22 to i64
  %24 = trunc i64 %23 to i32
  %25 = call i32 @av_usleep(i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load double, double* @REFRESH_RATE, align 8
  store double %27, double* %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SHOW_MODE_NONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = call i32 @video_refresh(%struct.TYPE_5__* %44, double* %5)
  br label %46

46:                                               ; preds = %43, %38, %26
  br label %11

47:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @av_usleep(i32) #1

declare dso_local i32 @video_refresh(%struct.TYPE_5__*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
