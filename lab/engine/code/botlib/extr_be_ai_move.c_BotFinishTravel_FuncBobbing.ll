; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFinishTravel_FuncBobbing.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFinishTravel_FuncBobbing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64* }
%struct.TYPE_13__ = type { i64* }

@result = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@MFL_SWIMMING = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BotFinishTravel_FuncBobbing(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %14 = load i64, i64* bitcast (%struct.TYPE_12__* @result to i64*), align 4
  %15 = call i32 @bot_moveresult_t_cleared(i64 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = call i32 @BotFuncBobStartEnd(%struct.TYPE_13__* %16, i64* %17, i64* %18, i64* %19)
  %21 = load i64*, i64** %6, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = call i32 @VectorSubtract(i64* %21, i64* %22, i64* %23)
  %25 = load i64*, i64** %9, align 8
  %26 = call float @VectorLength(i64* %25)
  store float %26, float* %12, align 4
  %27 = load float, float* %12, align 4
  %28 = fcmp olt float %27, 1.600000e+01
  br i1 %28, label %29, label %82

29:                                               ; preds = %2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = call i32 @VectorSubtract(i64* %32, i64* %35, i64* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MFL_SWIMMING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %29
  %48 = load i64*, i64** %10, align 8
  %49 = call float @VectorNormalize(i64* %48)
  store float %49, float* %12, align 4
  %50 = load float, float* %12, align 4
  %51 = fcmp ogt float %50, 6.000000e+01
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store float 6.000000e+01, float* %12, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load float, float* %12, align 4
  %55 = fmul float 6.000000e+00, %54
  %56 = fsub float 3.600000e+02, %55
  %57 = fsub float 3.600000e+02, %56
  store float %57, float* %13, align 4
  %58 = load float, float* %13, align 4
  %59 = fcmp ogt float %58, 5.000000e+00
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i64*, i64** %9, align 8
  %65 = load float, float* %13, align 4
  %66 = call i32 @EA_Move(i32 %63, i64* %64, float %65)
  br label %67

67:                                               ; preds = %60, %53
  %68 = load i64*, i64** %9, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %70 = call i32 @VectorCopy(i64* %68, i32 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MFL_SWIMMING, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 1), align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 1), align 4
  br label %81

81:                                               ; preds = %77, %67
  br label %125

82:                                               ; preds = %2
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = call i32 @MoverBottomCenter(%struct.TYPE_13__* %83, i64* %84)
  %86 = load i64*, i64** %11, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i64*, i64** %10, align 8
  %91 = call i32 @VectorSubtract(i64* %86, i64* %89, i64* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MFL_SWIMMING, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %82
  %99 = load i64*, i64** %10, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %82
  %102 = load i64*, i64** %10, align 8
  %103 = call float @VectorNormalize(i64* %102)
  store float %103, float* %12, align 4
  %104 = load float, float* %12, align 4
  %105 = fcmp ogt float %104, 5.000000e+00
  br i1 %105, label %106, label %124

106:                                              ; preds = %101
  %107 = load float, float* %12, align 4
  %108 = fcmp ogt float %107, 1.000000e+02
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store float 1.000000e+02, float* %12, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load float, float* %12, align 4
  %112 = fmul float 4.000000e+00, %111
  %113 = fsub float 4.000000e+02, %112
  %114 = fsub float 4.000000e+02, %113
  store float %114, float* %13, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i64*, i64** %10, align 8
  %119 = load float, float* %13, align 4
  %120 = call i32 @EA_Move(i32 %117, i64* %118, float %119)
  %121 = load i64*, i64** %10, align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @result, i32 0, i32 0), align 4
  %123 = call i32 @VectorCopy(i64* %121, i32 %122)
  br label %124

124:                                              ; preds = %110, %101
  br label %125

125:                                              ; preds = %124, %81
  %126 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 bitcast (%struct.TYPE_12__* @result to i8*), i64 8, i1 false)
  %127 = bitcast %struct.TYPE_12__* %3 to i64*
  %128 = load i64, i64* %127, align 4
  ret i64 %128
}

declare dso_local i32 @bot_moveresult_t_cleared(i64) #1

declare dso_local i32 @BotFuncBobStartEnd(%struct.TYPE_13__*, i64*, i64*, i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorLength(i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

declare dso_local i32 @MoverBottomCenter(%struct.TYPE_13__*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
