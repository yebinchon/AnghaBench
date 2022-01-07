; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuModuleLoadDataEx.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuModuleLoadDataEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 (i32*, i8*, i32, i32*, i8**)*, i64 (i64, i8**)* }

@CUDA_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cuModuleLoadDataEx(): %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cuModuleLoadDataEx(): %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_cuModuleLoadDataEx(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %14, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %15, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64 (i32*, i8*, i32, i32*, i8**)*, i64 (i32*, i8*, i32, i32*, i8**)** %26, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = load i8**, i8*** %13, align 8
  %33 = call i64 %27(i32* %28, i8* %29, i32 %30, i32* %31, i8** %32)
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %16, align 8
  %35 = load i64, i64* @CUDA_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %6
  store i8* null, i8** %17, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64 (i64, i8**)*, i64 (i64, i8**)** %39, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i64 %40(i64 %41, i8** %17)
  %43 = load i64, i64* @CUDA_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = call i32 @event_log_error(%struct.TYPE_6__* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %54

50:                                               ; preds = %37
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @event_log_error(%struct.TYPE_6__* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %50, %45
  store i32 -1, i32* %7, align 4
  br label %56

55:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @event_log_error(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
