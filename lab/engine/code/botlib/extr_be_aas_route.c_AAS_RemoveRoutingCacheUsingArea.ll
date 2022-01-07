; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_RemoveRoutingCacheUsingArea.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_RemoveRoutingCacheUsingArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__**, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@aasworld = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_RemoveRoutingCacheUsingArea(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 3), align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @AAS_RemoveRoutingCacheInCluster(i32 %16)
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 2), align 8
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 0, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @AAS_RemoveRoutingCacheInCluster(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 2), align 8
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 0, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @AAS_RemoveRoutingCacheInCluster(i32 %33)
  br label %35

35:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 0), align 8
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 1), align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %41, i64 %43
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %5, align 8
  br label %46

46:                                               ; preds = %55, %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %6, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = call i32 @AAS_FreeRoutingCache(%struct.TYPE_8__* %53)
  br label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %5, align 8
  br label %46

57:                                               ; preds = %46
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 1), align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %58, i64 %60
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %61, align 8
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %36

65:                                               ; preds = %36
  ret void
}

declare dso_local i32 @AAS_RemoveRoutingCacheInCluster(i32) #1

declare dso_local i32 @AAS_FreeRoutingCache(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
