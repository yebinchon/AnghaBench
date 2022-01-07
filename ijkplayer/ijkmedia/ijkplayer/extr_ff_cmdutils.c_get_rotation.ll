; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_cmdutils.c_get_rotation.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_cmdutils.c_get_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64* }

@.str = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@AV_PKT_DATA_DISPLAYMATRIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [176 x i8] c"Odd rotation angle.\0AIf you want to help, upload a sample of this file to ftp://upload.ffmpeg.org/incoming/ and contact the ffmpeg-devel mailing list. (ffmpeg-devel@ffmpeg.org)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_rotation(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_7__* @av_dict_get(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = load i32, i32* @AV_PKT_DATA_DISPLAYMATRIX, align 4
  %13 = call i32* @av_stream_get_side_data(%struct.TYPE_6__* %11, i32 %12, i32* null)
  store i32* %13, i32** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = call i64 @strcmp(i64* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = call double @av_strtod(i64* %31, i8** %6)
  store double %32, double* %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store double 0.000000e+00, double* %5, align 8
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %37, %22, %16, %1
  %39 = load i32*, i32** %4, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load double, double* %5, align 8
  %43 = fcmp une double %42, 0.000000e+00
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = call double @av_display_rotation_get(i32* %45)
  %47 = fneg double %46
  store double %47, double* %5, align 8
  br label %48

48:                                               ; preds = %44, %41, %38
  %49 = load double, double* %5, align 8
  %50 = fdiv double %49, 3.600000e+02
  %51 = fadd double %50, 2.500000e-03
  %52 = call i32 @floor(double %51)
  %53 = mul nsw i32 360, %52
  %54 = sitofp i32 %53 to double
  %55 = load double, double* %5, align 8
  %56 = fsub double %55, %54
  store double %56, double* %5, align 8
  %57 = load double, double* %5, align 8
  %58 = load double, double* %5, align 8
  %59 = fdiv double %58, 9.000000e+01
  %60 = call i32 @round(double %59)
  %61 = mul nsw i32 90, %60
  %62 = sitofp i32 %61 to double
  %63 = fsub double %57, %62
  %64 = call i32 @fabs(double %63)
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load i32, i32* @AV_LOG_WARNING, align 4
  %68 = call i32 @av_log(i32* null, i32 %67, i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %48
  %70 = load double, double* %5, align 8
  ret double %70
}

declare dso_local %struct.TYPE_7__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32* @av_stream_get_side_data(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @strcmp(i64*, i8*) #1

declare dso_local double @av_strtod(i64*, i8**) #1

declare dso_local double @av_display_rotation_get(i32*) #1

declare dso_local i32 @floor(double) #1

declare dso_local i32 @fabs(double) #1

declare dso_local i32 @round(double) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
