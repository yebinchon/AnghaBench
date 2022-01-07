; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_SP_func_button.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_SP_func_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i32, i32*, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"sound/movers/switches/butn2.wav\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lip\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@qtrue = common dso_local global i32 0, align 4
@Touch_Button = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SP_func_button(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = call i32 @G_SoundIndex(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 11
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 40, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 1000
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @VectorCopy(i32 %33, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @trap_SetBrushModel(%struct.TYPE_9__* %38, i32 %41)
  %43 = call i32 @G_SpawnFloat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), float* %6)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @G_SetMovedir(i32 %47, i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call float @fabs(i32 %56)
  %58 = load float*, float** %3, align 8
  %59 = getelementptr inbounds float, float* %58, i64 0
  store float %57, float* %59, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call float @fabs(i32 %64)
  %66 = load float*, float** %3, align 8
  %67 = getelementptr inbounds float, float* %66, i64 1
  store float %65, float* %67, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = call float @fabs(i32 %72)
  %74 = load float*, float** %3, align 8
  %75 = getelementptr inbounds float, float* %74, i64 2
  store float %73, float* %75, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load float*, float** %5, align 8
  %85 = call i32 @VectorSubtract(i32 %79, i32 %83, float* %84)
  %86 = load float*, float** %3, align 8
  %87 = getelementptr inbounds float, float* %86, i64 0
  %88 = load float, float* %87, align 4
  %89 = load float*, float** %5, align 8
  %90 = getelementptr inbounds float, float* %89, i64 0
  %91 = load float, float* %90, align 4
  %92 = fmul float %88, %91
  %93 = load float*, float** %3, align 8
  %94 = getelementptr inbounds float, float* %93, i64 1
  %95 = load float, float* %94, align 4
  %96 = load float*, float** %5, align 8
  %97 = getelementptr inbounds float, float* %96, i64 1
  %98 = load float, float* %97, align 4
  %99 = fmul float %95, %98
  %100 = fadd float %92, %99
  %101 = load float*, float** %3, align 8
  %102 = getelementptr inbounds float, float* %101, i64 2
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %5, align 8
  %105 = getelementptr inbounds float, float* %104, i64 2
  %106 = load float, float* %105, align 4
  %107 = fmul float %103, %106
  %108 = fadd float %100, %107
  %109 = load float, float* %6, align 4
  %110 = fsub float %108, %109
  store float %110, float* %4, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = load float, float* %4, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @VectorMA(i32 %113, float %114, i32* %117, i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %25
  %127 = load i32, i32* @qtrue, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %134

130:                                              ; preds = %25
  %131 = load i32, i32* @Touch_Button, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %126
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %136 = call i32 @InitMover(%struct.TYPE_9__* %135)
  ret void
}

declare dso_local i32 @G_SoundIndex(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_SetBrushModel(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @G_SpawnFloat(i8*, i8*, float*) #1

declare dso_local i32 @G_SetMovedir(i32, i32*) #1

declare dso_local float @fabs(i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, float*) #1

declare dso_local i32 @VectorMA(i32, float, i32*, i32) #1

declare dso_local i32 @InitMover(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
