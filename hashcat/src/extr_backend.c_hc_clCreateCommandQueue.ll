; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_clCreateCommandQueue.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_clCreateCommandQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 (i32, i32, i32, i64*)* }

@CL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"clCreateCommandQueue(): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_clCreateCommandQueue(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %13, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 %24(i32 %25, i32 %26, i32 %27, i64* %14)
  %29 = load i32*, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @CL_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %5
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @val2cstr_cl(i64 %35)
  %37 = call i32 @event_log_error(%struct.TYPE_6__* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %6, align 4
  br label %39

38:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @event_log_error(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @val2cstr_cl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
