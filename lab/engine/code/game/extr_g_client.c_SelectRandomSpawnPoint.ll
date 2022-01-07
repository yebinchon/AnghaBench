; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_SelectRandomSpawnPoint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_SelectRandomSpawnPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, float, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"info_player_deathmatch\00", align 1
@FL_NO_BOTS = common dso_local global i32 0, align 4
@FL_NO_HUMANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @SelectRandomSpawnPoint(float* %0, float* %1, i64 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i64 %2, i64* %6, align 8
  store float 0.000000e+00, float* %7, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %12

12:                                               ; preds = %59, %49, %39, %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call i32 @FOFS(i8* %14)
  %16 = load i8*, i8** %10, align 8
  %17 = call %struct.TYPE_8__* @G_Find(%struct.TYPE_8__* %13, i32 %15, i8* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %8, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FL_NO_BOTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FL_NO_HUMANS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %26
  br label %12

40:                                               ; preds = %36, %29
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = call i64 @SpotWouldTelefrag(%struct.TYPE_8__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = icmp eq %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %9, align 8
  br label %49

49:                                               ; preds = %47, %44
  br label %12

50:                                               ; preds = %40
  %51 = load float, float* %7, align 4
  %52 = fadd float %51, 1.000000e+00
  store float %52, float* %7, align 4
  %53 = call float (...) @random()
  %54 = load float, float* %7, align 4
  %55 = fmul float %53, %54
  %56 = fcmp ole float %55, 1.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %9, align 8
  br label %59

59:                                               ; preds = %57, %50
  br label %12

60:                                               ; preds = %12
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %102

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load float*, float** %4, align 8
  %69 = call i32 @VectorCopy(i32 %67, float* %68)
  %70 = load float*, float** %4, align 8
  %71 = getelementptr inbounds float, float* %70, i64 2
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, 9.000000e+00
  store float %73, float* %71, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load float*, float** %5, align 8
  %79 = call i32 @VectorCopy(i32 %77, float* %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load float, float* %81, align 4
  %83 = fcmp oeq float %82, 3.600000e+02
  br i1 %83, label %84, label %89

84:                                               ; preds = %63
  %85 = call float (...) @random()
  %86 = fmul float %85, 3.600000e+02
  %87 = load float*, float** %5, align 8
  %88 = getelementptr inbounds float, float* %87, i64 1
  store float %86, float* %88, align 4
  br label %101

89:                                               ; preds = %63
  %90 = call float (...) @random()
  %91 = fsub float %90, 5.000000e-01
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = fmul float %91, %94
  store float %95, float* %11, align 4
  %96 = load float, float* %11, align 4
  %97 = load float*, float** %5, align 8
  %98 = getelementptr inbounds float, float* %97, i64 1
  %99 = load float, float* %98, align 4
  %100 = fadd float %99, %96
  store float %100, float* %98, align 4
  br label %101

101:                                              ; preds = %89, %84
  br label %102

102:                                              ; preds = %101, %60
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  ret %struct.TYPE_8__* %103
}

declare dso_local %struct.TYPE_8__* @G_Find(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @FOFS(i8*) #1

declare dso_local i64 @SpotWouldTelefrag(%struct.TYPE_8__*) #1

declare dso_local float @random(...) #1

declare dso_local i32 @VectorCopy(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
