; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_clCreateBuffer.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_clCreateBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 (i32, i32, i64, i8*, i64*)* }

@CL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"clCreateBuffer(): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_clCreateBuffer(%struct.TYPE_6__* %0, i32 %1, i32 %2, i64 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %14, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %15, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32, i64, i8*, i64*)*, i32 (i32, i32, i64, i8*, i64*)** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 %26(i32 %27, i32 %28, i64 %29, i8* %30, i64* %16)
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* @CL_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = load i64, i64* %16, align 8
  %39 = call i32 @val2cstr_cl(i64 %38)
  %40 = call i32 @event_log_error(%struct.TYPE_6__* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %7, align 4
  br label %42

41:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @event_log_error(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @val2cstr_cl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
