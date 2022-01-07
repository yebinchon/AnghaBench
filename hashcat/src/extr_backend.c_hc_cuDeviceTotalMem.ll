; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuDeviceTotalMem.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuDeviceTotalMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 (i64*, i32)*, i64 (i64, i8**)* }

@CUDA_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"cuDeviceTotalMem(): %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cuDeviceTotalMem(): %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_cuDeviceTotalMem(%struct.TYPE_6__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64 (i64*, i32)*, i64 (i64*, i32)** %20, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 %21(i64* %22, i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @CUDA_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %3
  store i8* null, i8** %11, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64 (i64, i8**)*, i64 (i64, i8**)** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 %31(i64 %32, i8** %11)
  %34 = load i64, i64* @CUDA_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = call i32 @event_log_error(%struct.TYPE_6__* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %45

41:                                               ; preds = %28
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @event_log_error(%struct.TYPE_6__* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %41, %36
  store i32 -1, i32* %4, align 4
  br label %47

46:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @event_log_error(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
