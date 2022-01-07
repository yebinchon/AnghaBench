; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_async.c___redisAsyncFree.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_async.c___redisAsyncFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 (%struct.TYPE_12__*, i64)*, %struct.TYPE_10__, i32, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@REDIS_OK = common dso_local global i64 0, align 8
@REDIS_CONNECTED = common dso_local global i32 0, align 4
@REDIS_FREEING = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @__redisAsyncFree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__redisAsyncFree(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = call i64 @__redisShiftCallback(i32* %11, i32* %4)
  %13 = load i64, i64* @REDIS_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = call i32 @__redisRunCallback(%struct.TYPE_12__* %16, i32* %4, i32* null)
  br label %9

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %26, %18
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = call i64 @__redisShiftCallback(i32* %22, i32* %4)
  %24 = load i64, i64* @REDIS_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = call i32 @__redisRunCallback(%struct.TYPE_12__* %27, i32* %4, i32* null)
  br label %19

29:                                               ; preds = %19
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @dictGetIterator(i32 %33)
  store i32* %34, i32** %5, align 8
  br label %35

35:                                               ; preds = %39, %29
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @dictNext(i32* %36)
  store i32* %37, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32* @dictGetEntryVal(i32* %41)
  %43 = call i32 @__redisRunCallback(%struct.TYPE_12__* %40, i32* %42, i32* null)
  br label %35

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @dictReleaseIterator(i32* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dictRelease(i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @dictGetIterator(i32 %55)
  store i32* %56, i32** %5, align 8
  br label %57

57:                                               ; preds = %61, %44
  %58 = load i32*, i32** %5, align 8
  %59 = call i32* @dictNext(i32* %58)
  store i32* %59, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32* @dictGetEntryVal(i32* %63)
  %65 = call i32 @__redisRunCallback(%struct.TYPE_12__* %62, i32* %64, i32* null)
  br label %57

66:                                               ; preds = %57
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @dictReleaseIterator(i32* %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dictRelease(i32 %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = call i32 @_EL_CLEANUP(%struct.TYPE_12__* %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32 (%struct.TYPE_12__*, i64)*, i32 (%struct.TYPE_12__*, i64)** %77, align 8
  %79 = icmp ne i32 (%struct.TYPE_12__*, i64)* %78, null
  br i1 %79, label %80, label %118

80:                                               ; preds = %66
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @REDIS_CONNECTED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %80
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @REDIS_FREEING, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32 (%struct.TYPE_12__*, i64)*, i32 (%struct.TYPE_12__*, i64)** %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = load i64, i64* @REDIS_OK, align 8
  %100 = call i32 %97(%struct.TYPE_12__* %98, i64 %99)
  br label %117

101:                                              ; preds = %87
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32 (%struct.TYPE_12__*, i64)*, i32 (%struct.TYPE_12__*, i64)** %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i64, i64* @REDIS_OK, align 8
  br label %114

112:                                              ; preds = %101
  %113 = load i64, i64* @REDIS_ERR, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i64 [ %111, %110 ], [ %113, %112 ]
  %116 = call i32 %104(%struct.TYPE_12__* %105, i64 %115)
  br label %117

117:                                              ; preds = %114, %94
  br label %118

118:                                              ; preds = %117, %80, %66
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = call i32 @redisFree(%struct.TYPE_11__* %119)
  ret void
}

declare dso_local i64 @__redisShiftCallback(i32*, i32*) #1

declare dso_local i32 @__redisRunCallback(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32* @dictGetEntryVal(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @dictRelease(i32) #1

declare dso_local i32 @_EL_CLEANUP(%struct.TYPE_12__*) #1

declare dso_local i32 @redisFree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
