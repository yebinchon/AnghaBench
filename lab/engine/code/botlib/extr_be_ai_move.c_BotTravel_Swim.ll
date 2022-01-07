; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Swim.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Swim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@result = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @BotTravel_Swim(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca { i64, i32 }, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %9 = bitcast { i64, i32 }* %7 to i8*
  %10 = bitcast %struct.TYPE_12__* @result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false)
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %12 = load i64, i64* %11, align 4
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bot_moveresult_t_cleared(i64 %12, i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @VectorSubtract(i32 %18, i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @VectorNormalize(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @qtrue, align 4
  %29 = call i32 @BotCheckBlocked(%struct.TYPE_11__* %26, i32 %27, i32 %28, %struct.TYPE_12__* @result)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @EA_Move(i32 %32, i32 %33, i32 400)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 2), align 4
  %37 = call i32 @VectorCopy(i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 1), align 4
  %40 = call i32 @Vector2Angles(i32 %38, i32 %39)
  %41 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %44 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 bitcast (%struct.TYPE_12__* @result to i8*), i64 12, i1 false)
  %45 = bitcast { i64, i32 }* %8 to i8*
  %46 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 4 %46, i64 12, i1 false)
  %47 = load { i64, i32 }, { i64, i32 }* %8, align 8
  ret { i64, i32 } %47
}

declare dso_local i32 @bot_moveresult_t_cleared(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_11__*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @EA_Move(i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @Vector2Angles(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
