; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFinishTravel_Walk.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFinishTravel_Walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64* }
%struct.TYPE_11__ = type { i64* }

@result = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotFinishTravel_Walk(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 0), align 4
  %10 = call i32 @bot_moveresult_t_cleared(i32 %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %15, %20
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %28, %33
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 %34, i64* %36, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  store i64 0, i64* %38, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = call float @VectorNormalize(i64* %39)
  store float %40, float* %7, align 4
  %41 = load float, float* %7, align 4
  %42 = fcmp ogt float %41, 1.000000e+02
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  store float 1.000000e+02, float* %7, align 4
  br label %44

44:                                               ; preds = %43, %2
  %45 = load float, float* %7, align 4
  %46 = fmul float 3.000000e+00, %45
  %47 = fsub float 4.000000e+02, %46
  %48 = fsub float 4.000000e+02, %47
  store float %48, float* %8, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load float, float* %8, align 4
  %54 = call i32 @EA_Move(i32 %51, i64* %52, float %53)
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @result, i32 0, i32 0), align 4
  %57 = call i32 @VectorCopy(i64* %55, i32 %56)
  %58 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 bitcast (%struct.TYPE_10__* @result to i8*), i64 4, i1 false)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  ret i32 %60
}

declare dso_local i32 @bot_moveresult_t_cleared(i32) #1

declare dso_local float @VectorNormalize(i64*) #1

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
