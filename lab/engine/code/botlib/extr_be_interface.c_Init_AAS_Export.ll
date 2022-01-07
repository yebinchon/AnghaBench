; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_interface.c_Init_AAS_Export.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_interface.c_Init_AAS_Export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AAS_EntityInfo = common dso_local global i32 0, align 4
@AAS_Initialized = common dso_local global i32 0, align 4
@AAS_PresenceTypeBoundingBox = common dso_local global i32 0, align 4
@AAS_Time = common dso_local global i32 0, align 4
@AAS_PointAreaNum = common dso_local global i32 0, align 4
@AAS_PointReachabilityAreaIndex = common dso_local global i32 0, align 4
@AAS_TraceAreas = common dso_local global i32 0, align 4
@AAS_BBoxAreas = common dso_local global i32 0, align 4
@AAS_AreaInfo = common dso_local global i32 0, align 4
@AAS_PointContents = common dso_local global i32 0, align 4
@AAS_NextBSPEntity = common dso_local global i32 0, align 4
@AAS_ValueForBSPEpairKey = common dso_local global i32 0, align 4
@AAS_VectorForBSPEpairKey = common dso_local global i32 0, align 4
@AAS_FloatForBSPEpairKey = common dso_local global i32 0, align 4
@AAS_IntForBSPEpairKey = common dso_local global i32 0, align 4
@AAS_AreaReachability = common dso_local global i32 0, align 4
@AAS_AreaTravelTimeToGoalArea = common dso_local global i32 0, align 4
@AAS_EnableRoutingArea = common dso_local global i32 0, align 4
@AAS_PredictRoute = common dso_local global i32 0, align 4
@AAS_AlternativeRouteGoals = common dso_local global i32 0, align 4
@AAS_Swimming = common dso_local global i32 0, align 4
@AAS_PredictClientMovement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @Init_AAS_Export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Init_AAS_Export(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @AAS_EntityInfo, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 21
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @AAS_Initialized, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 20
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @AAS_PresenceTypeBoundingBox, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 19
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @AAS_Time, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 18
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @AAS_PointAreaNum, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 17
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @AAS_PointReachabilityAreaIndex, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 16
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @AAS_TraceAreas, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 15
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @AAS_BBoxAreas, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @AAS_AreaInfo, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @AAS_PointContents, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @AAS_NextBSPEntity, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @AAS_ValueForBSPEpairKey, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 10
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @AAS_VectorForBSPEpairKey, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @AAS_FloatForBSPEpairKey, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @AAS_IntForBSPEpairKey, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @AAS_AreaReachability, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @AAS_AreaTravelTimeToGoalArea, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @AAS_EnableRoutingArea, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @AAS_PredictRoute, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @AAS_AlternativeRouteGoals, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @AAS_Swimming, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @AAS_PredictClientMovement, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
