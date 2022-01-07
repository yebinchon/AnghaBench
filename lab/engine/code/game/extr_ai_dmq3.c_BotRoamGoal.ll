; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotRoamGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotRoamGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64* }
%struct.TYPE_5__ = type { float, i32*, i32 }

@MASK_SOLID = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotRoamGoal(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %171, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %174

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = call i32 @VectorCopy(i64* %19, i64* %20)
  %22 = call i32 (...) @random()
  %23 = sitofp i32 %22 to float
  store float %23, float* %8, align 4
  %24 = load float, float* %8, align 4
  %25 = fpext float %24 to double
  %26 = fcmp ogt double %25, 2.500000e-01
  br i1 %26, label %27, label %50

27:                                               ; preds = %16
  %28 = call i32 (...) @random()
  %29 = sitofp i32 %28 to double
  %30 = fcmp olt double %29, 5.000000e-01
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = call i32 (...) @random()
  %33 = mul nsw i32 800, %32
  %34 = add nsw i32 %33, 100
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %10, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  br label %49

40:                                               ; preds = %27
  %41 = call i32 (...) @random()
  %42 = mul nsw i32 800, %41
  %43 = add nsw i32 %42, 100
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %40, %31
  br label %50

50:                                               ; preds = %49, %16
  %51 = load float, float* %8, align 4
  %52 = fpext float %51 to double
  %53 = fcmp olt double %52, 7.500000e-01
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = call i32 (...) @random()
  %56 = sitofp i32 %55 to double
  %57 = fcmp olt double %56, 5.000000e-01
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = call i32 (...) @random()
  %60 = mul nsw i32 800, %59
  %61 = add nsw i32 %60, 100
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %10, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  br label %76

67:                                               ; preds = %54
  %68 = call i32 (...) @random()
  %69 = mul nsw i32 800, %68
  %70 = add nsw i32 %69, 100
  %71 = sext i32 %70 to i64
  %72 = load i64*, i64** %10, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %67, %58
  br label %77

77:                                               ; preds = %76, %50
  %78 = call i32 (...) @crandom()
  %79 = mul nsw i32 96, %78
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %10, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64*, i64** %10, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MASK_SOLID, align 4
  %93 = call i32 @BotAI_Trace(%struct.TYPE_5__* %12, i64* %87, i32* null, i32* null, i64* %88, i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = call i32 @VectorSubtract(i32* %95, i64* %98, i64* %99)
  %101 = load i64*, i64** %9, align 8
  %102 = call float @VectorNormalize(i64* %101)
  store float %102, float* %7, align 4
  %103 = load float, float* %7, align 4
  %104 = fcmp ogt float %103, 2.000000e+02
  br i1 %104, label %105, label %170

105:                                              ; preds = %77
  %106 = load i64*, i64** %9, align 8
  %107 = load float, float* %7, align 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %109 = load float, float* %108, align 8
  %110 = fmul float %107, %109
  %111 = fsub float %110, 4.000000e+01
  %112 = load i64*, i64** %9, align 8
  %113 = call i32 @VectorScale(i64* %106, float %111, i64* %112)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i64*, i64** %9, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = call i32 @VectorAdd(i64* %116, i64* %117, i64* %118)
  %120 = load i64*, i64** %10, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %11, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  store i64 %122, i64* %124, align 8
  %125 = load i64*, i64** %10, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %11, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  store i64 %127, i64* %129, align 8
  %130 = load i64*, i64** %10, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, 800
  %134 = load i64*, i64** %11, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 2
  store i64 %133, i64* %135, align 8
  %136 = load i64*, i64** %10, align 8
  %137 = load i64*, i64** %11, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @MASK_SOLID, align 4
  %142 = call i32 @BotAI_Trace(%struct.TYPE_5__* %12, i64* %136, i32* null, i32* null, i64* %137, i32 %140, i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %169, label %146

146:                                              ; preds = %105
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @trap_PointContents(i32* %153, i32 %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @CONTENTS_LAVA, align 4
  %160 = load i32, i32* @CONTENTS_SLIME, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %158, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %146
  %165 = load i64*, i64** %10, align 8
  %166 = load i64*, i64** %4, align 8
  %167 = call i32 @VectorCopy(i64* %165, i64* %166)
  br label %178

168:                                              ; preds = %146
  br label %169

169:                                              ; preds = %168, %105
  br label %170

170:                                              ; preds = %169, %77
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %13

174:                                              ; preds = %13
  %175 = load i64*, i64** %10, align 8
  %176 = load i64*, i64** %4, align 8
  %177 = call i32 @VectorCopy(i64* %175, i64* %176)
  br label %178

178:                                              ; preds = %174, %164
  ret void
}

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_5__*, i64*, i32*, i32*, i64*, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32*, i64*, i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @VectorScale(i64*, float, i64*) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @trap_PointContents(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
