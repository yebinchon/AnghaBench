; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_CreateReversedReachability.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_CreateReversedReachability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 (i32, i8*, i32)* }

@aasworld = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PRT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"area %d has more than 128 reachabilities\0A\00", align 1
@PRT_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_CreateReversedReachability() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 2), align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 2), align 8
  %11 = call i32 @FreeMemory(%struct.TYPE_8__* %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 16
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 1), align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 16
  %19 = add i64 %15, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64 @GetClearedMemory(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 2), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 16
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %29, i8** %6, align 8
  store i32 1, i32* %1, align 4
  br label %30

30:                                               ; preds = %111, %12
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %114

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 4), align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %5, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 128
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @botimport, i32 0, i32 0), align 8
  %45 = load i32, i32* @PRT_WARNING, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 %44(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %34
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %107, %48
  %50 = load i32, i32* %2, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %2, align 4
  %57 = icmp slt i32 %56, 128
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi i1 [ false, %49 ], [ %57, %55 ]
  br i1 %59, label %60, label %110

60:                                               ; preds = %58
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 3), align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %67
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %4, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = bitcast i8* %69 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %3, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 16
  store i8* %72, i8** %6, align 8
  %73 = load i32, i32* %1, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 2), align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 2), align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 2), align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %60
  %108 = load i32, i32* %2, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %2, align 4
  br label %49

110:                                              ; preds = %58
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %1, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %1, align 4
  br label %30

114:                                              ; preds = %30
  ret void
}

declare dso_local i32 @FreeMemory(%struct.TYPE_8__*) #1

declare dso_local i64 @GetClearedMemory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
