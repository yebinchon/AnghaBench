; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_FreeAllClusterAreaCache.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_FreeAllClusterAreaCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__***, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }

@aasworld = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_FreeAllClusterAreaCache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = load %struct.TYPE_6__***, %struct.TYPE_6__**** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %7 = icmp ne %struct.TYPE_6__*** %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %65

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %59, %9
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 0), align 8
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 2), align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %17
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %55, %14
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__***, %struct.TYPE_6__**** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %26, i64 %28
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %29, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %30, i64 %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %3, align 8
  br label %35

35:                                               ; preds = %44, %25
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %4, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = call i32 @AAS_FreeRoutingCache(%struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %3, align 8
  br label %35

46:                                               ; preds = %35
  %47 = load %struct.TYPE_6__***, %struct.TYPE_6__**** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__**, %struct.TYPE_6__*** %47, i64 %49
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %53
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %54, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %19

58:                                               ; preds = %19
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %10

62:                                               ; preds = %10
  %63 = load %struct.TYPE_6__***, %struct.TYPE_6__**** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  %64 = call i32 @FreeMemory(%struct.TYPE_6__*** %63)
  store %struct.TYPE_6__*** null, %struct.TYPE_6__**** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @aasworld, i32 0, i32 1), align 8
  br label %65

65:                                               ; preds = %62, %8
  ret void
}

declare dso_local i32 @AAS_FreeRoutingCache(%struct.TYPE_6__*) #1

declare dso_local i32 @FreeMemory(%struct.TYPE_6__***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
