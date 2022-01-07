; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_GetAreaRoutingCache.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_GetAreaRoutingCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__***, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@aasworld = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CACHETYPE_AREA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @AAS_GetAreaRoutingCache(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @AAS_ClusterAreaNum(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_12__***, %struct.TYPE_12__**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_12__**, %struct.TYPE_12__*** %13, i64 %15
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %17, i64 %19
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %9, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %8, align 8
  br label %23

23:                                               ; preds = %34, %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %38

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %8, align 8
  br label %23

38:                                               ; preds = %32, %23
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %93, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 2), align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_12__* @AAS_AllocRoutingCache(i32 %47)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %8, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 1), align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @VectorCopy(i32 %60, i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 6
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 7
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %41
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 6
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %80, align 8
  br label %81

81:                                               ; preds = %77, %41
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = load %struct.TYPE_12__***, %struct.TYPE_12__**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @aasworld, i32 0, i32 0), align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_12__**, %struct.TYPE_12__*** %83, i64 %85
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %87, i64 %89
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = call i32 @AAS_UpdateAreaRoutingCache(%struct.TYPE_12__* %91)
  br label %96

93:                                               ; preds = %38
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %95 = call i32 @AAS_UnlinkCache(%struct.TYPE_12__* %94)
  br label %96

96:                                               ; preds = %93, %81
  %97 = call i32 (...) @AAS_RoutingTime()
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @CACHETYPE_AREA, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %104 = call i32 @AAS_LinkCache(%struct.TYPE_12__* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  ret %struct.TYPE_12__* %105
}

declare dso_local i32 @AAS_ClusterAreaNum(i32, i32) #1

declare dso_local %struct.TYPE_12__* @AAS_AllocRoutingCache(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @AAS_UpdateAreaRoutingCache(%struct.TYPE_12__*) #1

declare dso_local i32 @AAS_UnlinkCache(%struct.TYPE_12__*) #1

declare dso_local i32 @AAS_RoutingTime(...) #1

declare dso_local i32 @AAS_LinkCache(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
