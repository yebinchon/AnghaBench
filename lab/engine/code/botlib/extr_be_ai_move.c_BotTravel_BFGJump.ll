; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_BFGJump.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_BFGJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i64*, i32* }
%struct.TYPE_12__ = type { i64*, i64* }

@result = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PITCH = common dso_local global i64 0, align 8
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@weapindex_bfg10k = common dso_local global %struct.TYPE_13__* null, align 8
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_BFGJump(%struct.TYPE_11__* noalias sret %0, %struct.TYPE_10__* %1, %struct.TYPE_12__* %2) #0 {
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
  %40 = load float, float* %7, align 4
  %41 = fcmp olt float %40, 5.000000e+00
  br i1 %41, label %42, label %115

42:                                               ; preds = %3
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @AngleDiff(i32 %45, i32 %50)
  %52 = call i32 @fabs(i32 %51)
  %53 = icmp slt i32 %52, 5
  br i1 %53, label %54, label %115

54:                                               ; preds = %42
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @AngleDiff(i32 %57, i32 %62)
  %64 = call i32 @fabs(i32 %63)
  %65 = icmp slt i32 %64, 5
  br i1 %65, label %66, label %115

66:                                               ; preds = %54
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %71, %76
  %78 = load i64*, i64** %6, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %84, %89
  %91 = load i64*, i64** %6, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  store i64 %90, i64* %92, align 8
  %93 = load i64*, i64** %6, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  store i64 0, i64* %94, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = call float @VectorNormalize(i64* %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @EA_Jump(i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @EA_Attack(i32 %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i64*, i64** %6, align 8
  %109 = call i32 @EA_Move(i32 %107, i64* %108, float 8.000000e+02)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %130

115:                                              ; preds = %54, %42, %3
  %116 = load float, float* %7, align 4
  %117 = fcmp ogt float %116, 8.000000e+01
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store float 8.000000e+01, float* %7, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load float, float* %7, align 4
  %121 = fmul float 5.000000e+00, %120
  %122 = fsub float 4.000000e+02, %121
  %123 = fsub float 4.000000e+02, %122
  store float %123, float* %8, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i64*, i64** %6, align 8
  %128 = load float, float* %8, align 4
  %129 = call i32 @EA_Move(i32 %126, i64* %127, float %128)
  br label %130

130:                                              ; preds = %119, %66
  %131 = load i64*, i64** %6, align 8
  %132 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %133 = call i32 @Vector2Angles(i64* %131, i32* %132)
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %135 = load i64, i64* @PITCH, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 90, i32* %136, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 0), align 8
  %141 = call i32 @EA_View(i32 %139, i32* %140)
  %142 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 3), align 8
  %144 = or i32 %143, %142
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 3), align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** @weapindex_bfg10k, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @EA_SelectWeapon(i32 %147, i32 %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** @weapindex_bfg10k, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 1), align 8
  %157 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 3), align 8
  %159 = or i32 %158, %157
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 3), align 8
  %160 = load i64*, i64** %6, align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @result, i32 0, i32 2), align 4
  %162 = call i32 @VectorCopy(i64* %160, i32 %161)
  %163 = bitcast %struct.TYPE_11__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 bitcast (%struct.TYPE_11__* @result to i8*), i64 24, i1 false)
  ret void
}

declare dso_local i32 @bot_moveresult_t_cleared(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @AngleDiff(i32, i32) #1

declare dso_local i32 @EA_Jump(i32) #1

declare dso_local i32 @EA_Attack(i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @Vector2Angles(i64*, i32*) #1

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
