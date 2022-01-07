; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_start.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { {}*, i32 (%struct.TYPE_17__*, i8*)*, i64 (%struct.TYPE_17__*, i32, i32*, %struct.TYPE_19__*, i32)*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__*, i8*, i32)*, i64 (%struct.TYPE_20__*)* }
%struct.TYPE_18__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"Already started?\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"No device found, is it plugged in?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"add_fd failed\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unable to start device_listener\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SIMULATOR\00", align 1
@IWDP_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_start(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %4, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %17, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = call i32 %18(%struct.TYPE_17__* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = call i64 @iwdp_listen(%struct.TYPE_17__* %22, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %21
  %27 = call %struct.TYPE_19__* (...) @iwdp_idl_new()
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %5, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.TYPE_17__*)**
  %34 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = call i32 %34(%struct.TYPE_17__* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = call i32 %42(%struct.TYPE_17__* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %2, align 4
  br label %86

45:                                               ; preds = %26
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = load i64 (%struct.TYPE_17__*, i32, i32*, %struct.TYPE_19__*, i32)*, i64 (%struct.TYPE_17__*, i32, i32*, %struct.TYPE_19__*, i32)** %50, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = call i64 %51(%struct.TYPE_17__* %52, i32 %53, i32* null, %struct.TYPE_19__* %54, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %59, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = call i32 %60(%struct.TYPE_17__* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %62, i32* %2, align 4
  br label %86

63:                                               ; preds = %45
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  store %struct.TYPE_20__* %66, %struct.TYPE_20__** %7, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i64 (%struct.TYPE_20__*)*, i64 (%struct.TYPE_20__*)** %68, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %71 = call i64 %69(%struct.TYPE_20__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %63
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = call i32 %76(%struct.TYPE_17__* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 %78, i32* %2, align 4
  br label %86

79:                                               ; preds = %63
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_20__*, i8*, i32)*, i32 (%struct.TYPE_20__*, i8*, i32)** %81, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %84 = call i32 %82(%struct.TYPE_20__* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %85 = load i32, i32* @IWDP_SUCCESS, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %73, %57, %39, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @iwdp_listen(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_19__* @iwdp_idl_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
