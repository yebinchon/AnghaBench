; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_load_map.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_load_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_15__ = type { i64, i32, i64, i64, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (i32, i32)* }

@EAGAIN = common dso_local global i64 0, align 8
@cls = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@DMLAB_RECORDING_ERROR_NONE = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @load_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_map(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i32 @dev_map(%struct.TYPE_14__* %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %21, %15
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = call i64 @connecting(%struct.TYPE_14__* %17)
  %19 = load i64, i64* @EAGAIN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %16

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %29, %22
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = call i32 (...) @IN_Frame()
  %28 = call i32 (...) @Com_Frame()
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %23

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  store i32 1, i32* %4, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = call i32 @dmlab_start_recording(%struct.TYPE_15__* %46)
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %33
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = call i32 @dmlab_start_demo(%struct.TYPE_15__* %60)
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = call i32 @dmlab_start_video(%struct.TYPE_15__* %77)
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %67, %64
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DMLAB_RECORDING_ERROR_NONE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %81
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32 (i32, i32)*, i32 (i32, i32)** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %95(i32 %100, i32 %105)
  br label %107

107:                                              ; preds = %89, %81
  %108 = load i32, i32* @stdout, align 4
  %109 = call i32 @fflush(i32 %108)
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @dev_map(%struct.TYPE_14__*) #1

declare dso_local i64 @connecting(%struct.TYPE_14__*) #1

declare dso_local i32 @IN_Frame(...) #1

declare dso_local i32 @Com_Frame(...) #1

declare dso_local i32 @dmlab_start_recording(%struct.TYPE_15__*) #1

declare dso_local i32 @dmlab_start_demo(%struct.TYPE_15__*) #1

declare dso_local i32 @dmlab_start_video(%struct.TYPE_15__*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
