; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_StoreReachability.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_StoreReachability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }

@aasworld = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@numlreachabilities = common dso_local global i32 0, align 4
@areareachability = common dso_local global %struct.TYPE_8__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_StoreReachability() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %9 = call i32 @FreeMemory(%struct.TYPE_7__* %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @numlreachabilities, align 4
  %12 = add nsw i32 %11, 10
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 28
  %15 = trunc i64 %14 to i32
  %16 = call i64 @GetClearedMemory(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %106, %10
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 1), align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %109

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %2, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  %28 = sext i32 %27 to i64
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @areareachability, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %33, i64 %35
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %3, align 8
  br label %38

38:                                               ; preds = %94, %22
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %98

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %49
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %4, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @VectorCopy(i32 %68, i32 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @VectorCopy(i32 %75, i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %41
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %3, align 8
  br label %38

98:                                               ; preds = %38
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %1, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %1, align 4
  br label %18

109:                                              ; preds = %18
  ret void
}

declare dso_local i32 @FreeMemory(%struct.TYPE_7__*) #1

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
