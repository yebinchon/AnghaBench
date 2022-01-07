; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_BarrierJump.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_BarrierJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64* }
%struct.TYPE_13__ = type { i64* }

@result = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotTravel_BarrierJump(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i64*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %10 = call i32 @bot_moveresult_t_cleared(i32 %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %15, %20
  %22 = load i64*, i64** %8, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %28, %33
  %35 = load i64*, i64** %8, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 %34, i64* %36, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  store i64 0, i64* %38, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = call float @VectorNormalize(i64* %39)
  store float %40, float* %6, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* @qtrue, align 4
  %44 = call i32 @BotCheckBlocked(%struct.TYPE_11__* %41, i64* %42, i32 %43, %struct.TYPE_12__* @result)
  %45 = load float, float* %6, align 4
  %46 = fcmp olt float %45, 9.000000e+00
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @EA_Jump(i32 %50)
  br label %67

52:                                               ; preds = %2
  %53 = load float, float* %6, align 4
  %54 = fcmp ogt float %53, 6.000000e+01
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store float 6.000000e+01, float* %6, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load float, float* %6, align 4
  %58 = fmul float 6.000000e+00, %57
  %59 = fsub float 3.600000e+02, %58
  %60 = fsub float 3.600000e+02, %59
  store float %60, float* %7, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = load float, float* %7, align 4
  %66 = call i32 @EA_Move(i32 %63, i64* %64, float %65)
  br label %67

67:                                               ; preds = %56, %47
  %68 = load i64*, i64** %8, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %70 = call i32 @VectorCopy(i64* %68, i32 %69)
  %71 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 bitcast (%struct.TYPE_12__* @result to i8*), i64 4, i1 false)
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  ret i32 %73
}

declare dso_local i32 @bot_moveresult_t_cleared(i32) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_11__*, i64*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @EA_Jump(i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
