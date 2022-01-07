; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_nvrtcCompileProgram.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_nvrtcCompileProgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 (i32, i32, i8**)*, i32 (i64)* }

@NVRTC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"nvrtcCompileProgram(): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_nvrtcCompileProgram(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %11, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64 (i32, i32, i8**)*, i64 (i32, i32, i8**)** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i8**, i8*** %9, align 8
  %26 = call i64 %22(i32 %23, i32 %24, i8** %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @NVRTC_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32 (i64)*, i32 (i64)** %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 %34(i64 %35)
  %37 = call i32 @event_log_error(%struct.TYPE_6__* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %5, align 4
  br label %39

38:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @event_log_error(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
