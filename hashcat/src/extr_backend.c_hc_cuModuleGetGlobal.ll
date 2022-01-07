; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuModuleGetGlobal.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuModuleGetGlobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 (i32*, i64*, i32, i8*)*, i64 (i64, i8**)* }

@CUDA_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"cuModuleGetGlobal(): %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cuModuleGetGlobal(): %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_cuModuleGetGlobal(%struct.TYPE_6__* %0, i32* %1, i64* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %13, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64 (i32*, i64*, i32, i8*)*, i64 (i32*, i64*, i32, i8*)** %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 %25(i32* %26, i64* %27, i32 %28, i8* %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @CUDA_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %5
  store i8* null, i8** %15, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64 (i64, i8**)*, i64 (i64, i8**)** %36, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i64 %37(i64 %38, i8** %15)
  %40 = load i64, i64* @CUDA_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = call i32 @event_log_error(%struct.TYPE_6__* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %51

47:                                               ; preds = %34
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @event_log_error(%struct.TYPE_6__* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %47, %42
  store i32 -1, i32* %6, align 4
  br label %53

52:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @event_log_error(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
