; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Crouch.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Crouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64* }
%struct.TYPE_13__ = type { i64* }

@result = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotTravel_Crouch(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i64*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %9 = call i32 @bot_moveresult_t_cleared(i32 %8)
  store float 4.000000e+02, float* %6, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %14, %19
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %27, %32
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 %33, i64* %35, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  store i64 0, i64* %37, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = call i32 @VectorNormalize(i64* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load i32, i32* @qtrue, align 4
  %43 = call i32 @BotCheckBlocked(%struct.TYPE_11__* %40, i64* %41, i32 %42, %struct.TYPE_12__* @result)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @EA_Crouch(i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load float, float* %6, align 4
  %53 = call i32 @EA_Move(i32 %50, i64* %51, float %52)
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %56 = call i32 @VectorCopy(i64* %54, i32 %55)
  %57 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 bitcast (%struct.TYPE_12__* @result to i8*), i64 4, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  ret i32 %59
}

declare dso_local i32 @bot_moveresult_t_cleared(i32) #1

declare dso_local i32 @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_11__*, i64*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @EA_Crouch(i32) #1

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
