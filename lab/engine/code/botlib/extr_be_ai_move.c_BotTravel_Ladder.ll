; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Ladder.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Ladder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@result = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @BotTravel_Ladder(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* null, i32** %8, align 8
  %11 = bitcast { i64, i32 }* %9 to i8*
  %12 = bitcast %struct.TYPE_10__* @result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %14 = load i64, i64* %13, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bot_moveresult_t_cleared(i64 %14, i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @VectorSubtract(i32 %20, i32 %23, i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @VectorNormalize(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 3, %40
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 2), align 4
  %46 = call i32 @Vector2Angles(i32* %44, i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @EA_Move(i32 %49, i32* %50, i32 0)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @EA_MoveForward(i32 %54)
  %56 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 1), align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 1), align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 0), align 4
  %61 = call i32 @VectorCopy(i32* %59, i32 %60)
  %62 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 bitcast (%struct.TYPE_10__* @result to i8*), i64 12, i1 false)
  %63 = bitcast { i64, i32 }* %10 to i8*
  %64 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = load { i64, i32 }, { i64, i32 }* %10, align 8
  ret { i64, i32 } %65
}

declare dso_local i32 @bot_moveresult_t_cleared(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @Vector2Angles(i32*, i32) #1

declare dso_local i32 @EA_Move(i32, i32*, i32) #1

declare dso_local i32 @EA_MoveForward(i32) #1

declare dso_local i32 @VectorCopy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
