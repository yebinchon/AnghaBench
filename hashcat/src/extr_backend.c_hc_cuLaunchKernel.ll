; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuLaunchKernel.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_cuLaunchKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**)*, i64 (i64, i8**)* }

@CUDA_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"cuLaunchKernel(): %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cuLaunchKernel(): %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_cuLaunchKernel(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i8** %10, i8** %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8**, align 8
  %25 = alloca i8**, align 8
  %26 = alloca %struct.TYPE_7__*, align 8
  %27 = alloca %struct.TYPE_8__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i8** %10, i8*** %24, align 8
  store i8** %11, i8*** %25, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %26, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %27, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**)*, i64 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**)** %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %22, align 4
  %48 = load i32, i32* %23, align 4
  %49 = load i8**, i8*** %24, align 8
  %50 = load i8**, i8*** %25, align 8
  %51 = call i64 %39(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i8** %49, i8** %50)
  store i64 %51, i64* %28, align 8
  %52 = load i64, i64* %28, align 8
  %53 = load i64, i64* @CUDA_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %12
  store i8* null, i8** %29, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64 (i64, i8**)*, i64 (i64, i8**)** %57, align 8
  %59 = load i64, i64* %28, align 8
  %60 = call i64 %58(i64 %59, i8** %29)
  %61 = load i64, i64* @CUDA_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = load i8*, i8** %29, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = call i32 @event_log_error(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %66)
  br label %72

68:                                               ; preds = %55
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %70 = load i64, i64* %28, align 8
  %71 = call i32 @event_log_error(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %68, %63
  store i32 -1, i32* %13, align 4
  br label %74

73:                                               ; preds = %12
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i32, i32* %13, align 4
  ret i32 %75
}

declare dso_local i32 @event_log_error(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
