; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_WalkOffLedge.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_WalkOffLedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64* }
%struct.TYPE_13__ = type { i64*, i64* }

@result = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotTravel_WalkOffLedge(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %12 = call i32 @bot_moveresult_t_cleared(i32 %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = call i32 @VectorSubtract(i64* %15, i64* %18, i64* %19)
  %21 = load i64*, i64** %7, align 8
  %22 = call float @VectorNormalize(i64* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i32, i32* @qtrue, align 4
  %26 = call i32 @BotCheckBlocked(%struct.TYPE_11__* %23, i64* %24, i32 %25, %struct.TYPE_12__* @result)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = call i32 @VectorSubtract(i64* %29, i64* %32, i64* %33)
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = call float @VectorLength(i64* %37)
  store float %38, float* %10, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %43, %48
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %56, %61
  %63 = load i64*, i64** %6, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  store i64 %62, i64* %64, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  store i64 0, i64* %66, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = call float @VectorNormalize(i64* %67)
  store float %68, float* %8, align 4
  %69 = load float, float* %8, align 4
  %70 = fcmp olt float %69, 4.800000e+01
  br i1 %70, label %71, label %117

71:                                               ; preds = %2
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %76, %81
  %83 = load i64*, i64** %6, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %89, %94
  %96 = load i64*, i64** %6, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  store i64 %95, i64* %97, align 8
  %98 = load i64*, i64** %6, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  store i64 0, i64* %99, align 8
  %100 = load i64*, i64** %6, align 8
  %101 = call float @VectorNormalize(i64* %100)
  %102 = load float, float* %10, align 4
  %103 = fcmp olt float %102, 2.000000e+01
  br i1 %103, label %104, label %105

104:                                              ; preds = %71
  store float 1.000000e+02, float* %9, align 4
  br label %116

105:                                              ; preds = %71
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = call i32 @AAS_HorizontalVelocityForJump(i32 0, i64* %108, i64* %111, float* %9)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %105
  store float 4.000000e+02, float* %9, align 4
  br label %115

115:                                              ; preds = %114, %105
  br label %116

116:                                              ; preds = %115, %104
  br label %131

117:                                              ; preds = %2
  %118 = load float, float* %10, align 4
  %119 = fcmp olt float %118, 2.000000e+01
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load float, float* %8, align 4
  %122 = fcmp ogt float %121, 6.400000e+01
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store float 6.400000e+01, float* %8, align 4
  br label %124

124:                                              ; preds = %123, %120
  %125 = load float, float* %8, align 4
  %126 = fmul float 4.000000e+00, %125
  %127 = fsub float 2.560000e+02, %126
  %128 = fsub float 4.000000e+02, %127
  store float %128, float* %9, align 4
  br label %130

129:                                              ; preds = %117
  store float 4.000000e+02, float* %9, align 4
  br label %130

130:                                              ; preds = %129, %124
  br label %131

131:                                              ; preds = %130, %116
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = load i64*, i64** %6, align 8
  %134 = load i32, i32* @qtrue, align 4
  %135 = call i32 @BotCheckBlocked(%struct.TYPE_11__* %132, i64* %133, i32 %134, %struct.TYPE_12__* @result)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i64*, i64** %6, align 8
  %140 = load float, float* %9, align 4
  %141 = call i32 @EA_Move(i32 %138, i64* %139, float %140)
  %142 = load i64*, i64** %6, align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %144 = call i32 @VectorCopy(i64* %142, i32 %143)
  %145 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 bitcast (%struct.TYPE_12__* @result to i8*), i64 4, i1 false)
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  ret i32 %147
}

declare dso_local i32 @bot_moveresult_t_cleared(i32) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_11__*, i64*, i32, %struct.TYPE_12__*) #1

declare dso_local float @VectorLength(i64*) #1

declare dso_local i32 @AAS_HorizontalVelocityForJump(i32, i64*, i64*, float*) #1

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
