; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFinishTravel_WalkOffLedge.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFinishTravel_WalkOffLedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64* }

@result = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @BotFinishTravel_WalkOffLedge(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %12 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 8
  %13 = call i32 @bot_moveresult_t_cleared(i64* %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i64*, i64** %6, align 8
  %21 = call i32 @VectorSubtract(i64* %16, i32 %19, i64* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i32, i32* @qtrue, align 4
  %25 = call i32 @BotCheckBlocked(%struct.TYPE_11__* %22, i64* %23, i32 %24, %struct.TYPE_12__* @result)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i64*, i64** %9, align 8
  %33 = call i32 @VectorSubtract(i64* %28, i32 %31, i64* %32)
  %34 = load i64*, i64** %9, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  store i64 0, i64* %35, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = call float @VectorNormalize(i64* %36)
  store float %37, float* %10, align 4
  %38 = load float, float* %10, align 4
  %39 = fcmp ogt float %38, 1.600000e+01
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = call i32 @VectorMA(i64* %43, i32 16, i64* %44, i64* %45)
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = call i32 @VectorCopy(i64* %50, i64* %51)
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64*, i64** %8, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = call i32 @BotAirControl(i32 %56, i32 %59, i64* %60, i64* %61, float* %11)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %53
  %65 = load i64*, i64** %6, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = call i32 @VectorCopy(i64* %65, i64* %66)
  %68 = load i64*, i64** %7, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  store i64 0, i64* %69, align 8
  store float 4.000000e+02, float* %11, align 4
  br label %70

70:                                               ; preds = %64, %53
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64*, i64** %7, align 8
  %75 = load float, float* %11, align 4
  %76 = call i32 @EA_Move(i32 %73, i64* %74, float %75)
  %77 = load i64*, i64** %7, align 8
  %78 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 8
  %79 = call i32 @VectorCopy(i64* %77, i64* %78)
  %80 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 bitcast (%struct.TYPE_12__* @result to i8*), i64 8, i1 false)
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  ret i64* %82
}

declare dso_local i32 @bot_moveresult_t_cleared(i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i32, i64*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_11__*, i64*, i32, %struct.TYPE_12__*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @VectorMA(i64*, i32, i64*, i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @BotAirControl(i32, i32, i64*, i64*, float*) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
