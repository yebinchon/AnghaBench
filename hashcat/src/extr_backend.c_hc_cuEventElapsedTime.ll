; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuEventElapsedTime.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuEventElapsedTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 (float*, i32, i32)*, i64 (i64, i8**)* }

@CUDA_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cuEventElapsedTime(): %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cuEventElapsedTime(): %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_cuEventElapsedTime(%struct.TYPE_6__* %0, float* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %11, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64 (float*, i32, i32)*, i64 (float*, i32, i32)** %22, align 8
  %24 = load float*, float** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 %23(float* %24, i32 %25, i32 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @CUDA_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %4
  store i8* null, i8** %13, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64 (i64, i8**)*, i64 (i64, i8**)** %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i64 %34(i64 %35, i8** %13)
  %37 = load i64, i64* @CUDA_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = call i32 @event_log_error(%struct.TYPE_6__* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %48

44:                                               ; preds = %31
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @event_log_error(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %44, %39
  store i32 -1, i32* %5, align 4
  br label %50

49:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @event_log_error(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
