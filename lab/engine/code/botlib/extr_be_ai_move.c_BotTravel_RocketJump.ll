; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_RocketJump.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_RocketJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i64*, i32* }
%struct.TYPE_12__ = type { i64*, i64* }

@result = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PITCH = common dso_local global i64 0, align 8
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@weapindex_rocketlauncher = common dso_local global %struct.TYPE_13__* null, align 8
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_RocketJump(%struct.TYPE_11__* noalias sret %0, %struct.TYPE_10__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %5, align 8
  %9 = call i32 @bot_moveresult_t_cleared(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 @result)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %14, %19
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %27, %32
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 %33, i64* %35, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  store i64 0, i64* %37, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = call float @VectorNormalize(i64* %38)
  store float %39, float* %7, align 4
  %40 = load i64*, i64** %6, align 8
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %42 = call i32 @Vector2Angles(i64* %40, i32* %41)
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %44 = load i64, i64* @PITCH, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 90, i32* %45, align 4
  %46 = load float, float* %7, align 4
  %47 = fcmp olt float %46, 5.000000e+00
  br i1 %47, label %48, label %121

48:                                               ; preds = %3
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AngleDiff(i32 %51, i32 %56)
  %58 = call i32 @fabs(i32 %57)
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %121

60:                                               ; preds = %48
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @AngleDiff(i32 %63, i32 %68)
  %70 = call i32 @fabs(i32 %69)
  %71 = icmp slt i32 %70, 5
  br i1 %71, label %72, label %121

72:                                               ; preds = %60
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %77, %82
  %84 = load i64*, i64** %6, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %90, %95
  %97 = load i64*, i64** %6, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  store i64 %96, i64* %98, align 8
  %99 = load i64*, i64** %6, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  store i64 0, i64* %100, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = call float @VectorNormalize(i64* %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @EA_Jump(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @EA_Attack(i32 %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64*, i64** %6, align 8
  %115 = call i32 @EA_Move(i32 %113, i64* %114, float 8.000000e+02)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %136

121:                                              ; preds = %60, %48, %3
  %122 = load float, float* %7, align 4
  %123 = fcmp ogt float %122, 8.000000e+01
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store float 8.000000e+01, float* %7, align 4
  br label %125

125:                                              ; preds = %124, %121
  %126 = load float, float* %7, align 4
  %127 = fmul float 5.000000e+00, %126
  %128 = fsub float 4.000000e+02, %127
  %129 = fsub float 4.000000e+02, %128
  store float %129, float* %8, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i64*, i64** %6, align 8
  %134 = load float, float* %8, align 4
  %135 = call i32 @EA_Move(i32 %132, i64* %133, float %134)
  br label %136

136:                                              ; preds = %125, %72
  %137 = load i64*, i64** %6, align 8
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %139 = call i32 @Vector2Angles(i64* %137, i32* %138)
  %140 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %141 = load i64, i64* @PITCH, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32 90, i32* %142, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %147 = call i32 @EA_View(i32 %145, i32* %146)
  %148 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 3), align 8
  %150 = or i32 %149, %148
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 3), align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** @weapindex_rocketlauncher, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @EA_SelectWeapon(i32 %153, i32 %157)
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** @weapindex_rocketlauncher, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 1), align 8
  %163 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 3), align 8
  %165 = or i32 %164, %163
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 3), align 8
  %166 = load i64*, i64** %6, align 8
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 2), align 4
  %168 = call i32 @VectorCopy(i64* %166, i32 %167)
  %169 = bitcast %struct.TYPE_11__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 bitcast (%struct.TYPE_11__* @result to i8*), i64 24, i1 false)
  ret void
}

declare dso_local i32 @bot_moveresult_t_cleared(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @Vector2Angles(i64*, i32*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @AngleDiff(i32, i32) #1

declare dso_local i32 @EA_Jump(i32) #1

declare dso_local i32 @EA_Attack(i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @EA_View(i32, i32*) #1

declare dso_local i32 @EA_SelectWeapon(i32, i32) #1

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
