; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_clCreateProgramWithBinary.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_hc_clCreateProgramWithBinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 (i32, i32, i32*, i64*, i8**, i64*, i64*)* }

@CL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"clCreateProgramWithBinary(): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_clCreateProgramWithBinary(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3, i64* %4, i8** %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %18, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %19, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32 (i32, i32, i32*, i64*, i8**, i64*, i64*)*, i32 (i32, i32, i32*, i64*, i8**, i64*, i64*)** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i64*, i64** %14, align 8
  %35 = load i8**, i8*** %15, align 8
  %36 = load i64*, i64** %16, align 8
  %37 = call i32 %30(i32 %31, i32 %32, i32* %33, i64* %34, i8** %35, i64* %36, i64* %20)
  %38 = load i32*, i32** %17, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* %20, align 8
  %40 = load i64, i64* @CL_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = load i64, i64* %20, align 8
  %45 = call i32 @val2cstr_cl(i64 %44)
  %46 = call i32 @event_log_error(%struct.TYPE_6__* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %9, align 4
  br label %48

47:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @event_log_error(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @val2cstr_cl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
