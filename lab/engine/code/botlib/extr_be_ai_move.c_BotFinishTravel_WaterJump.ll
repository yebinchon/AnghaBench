; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFinishTravel_WaterJump.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFinishTravel_WaterJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_11__ = type { i32 }

@result = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@MFL_WATERJUMP = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32*, i64 } @BotFinishTravel_WaterJump(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load i32*, i32** getelementptr inbounds ({ i32*, i64 }, { i32*, i64 }* bitcast (%struct.TYPE_10__* @result to { i32*, i64 }*), i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds ({ i32*, i64 }, { i32*, i64 }* bitcast (%struct.TYPE_10__* @result to { i32*, i64 }*), i32 0, i32 1), align 8
  %10 = call i32 @bot_moveresult_t_cleared(i32* %8, i64 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MFL_WATERJUMP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_10__* @result to i8*), i64 16, i1 false)
  br label %83

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @VectorCopy(i32* %22, i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 32
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @AAS_PointContents(i32* %29)
  %31 = load i32, i32* @CONTENTS_LAVA, align 4
  %32 = load i32, i32* @CONTENTS_SLIME, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CONTENTS_WATER, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %19
  %39 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 bitcast (%struct.TYPE_10__* @result to i8*), i64 16, i1 false)
  br label %83

40:                                               ; preds = %19
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @VectorSubtract(i32 %43, i32* %46, i32* %47)
  %49 = call i32 (...) @crandom()
  %50 = mul nsw i32 %49, 10
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = call i32 (...) @crandom()
  %56 = mul nsw i32 %55, 10
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = call i32 (...) @crandom()
  %62 = mul nsw i32 %61, 10
  %63 = add nsw i32 70, %62
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @EA_Move(i32 %70, i32* %71, i32 400)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 2), align 4
  %75 = call i32 @Vector2Angles(i32* %73, i32 %74)
  %76 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 1), align 8
  %78 = or i32 %77, %76
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 1), align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 0), align 8
  %81 = call i32 @VectorCopy(i32* %79, i32* %80)
  %82 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 bitcast (%struct.TYPE_10__* @result to i8*), i64 16, i1 false)
  br label %83

83:                                               ; preds = %40, %38, %17
  %84 = bitcast %struct.TYPE_10__* %3 to { i32*, i64 }*
  %85 = load { i32*, i64 }, { i32*, i64 }* %84, align 8
  ret { i32*, i64 } %85
}

declare dso_local i32 @bot_moveresult_t_cleared(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AAS_PointContents(i32*) #1

declare dso_local i32 @VectorSubtract(i32, i32*, i32*) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @EA_Move(i32, i32*, i32) #1

declare dso_local i32 @Vector2Angles(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
