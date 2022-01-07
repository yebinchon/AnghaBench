; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotWantsToCamp.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotWantsToCamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@CHARACTERISTIC_CAMPER = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@LTG_TEAMHELP = common dso_local global i64 0, align 8
@LTG_TEAMACCOMPANY = common dso_local global i64 0, align 8
@LTG_DEFENDKEYAREA = common dso_local global i64 0, align 8
@LTG_GETFLAG = common dso_local global i64 0, align 8
@LTG_RUSHBASE = common dso_local global i64 0, align 8
@LTG_CAMP = common dso_local global i64 0, align 8
@LTG_CAMPORDER = common dso_local global i64 0, align 8
@LTG_PATROL = common dso_local global i64 0, align 8
@INVENTORY_ROCKETLAUNCHER = common dso_local global i64 0, align 8
@INVENTORY_ROCKETS = common dso_local global i64 0, align 8
@INVENTORY_RAILGUN = common dso_local global i64 0, align 8
@INVENTORY_SLUGS = common dso_local global i64 0, align 8
@INVENTORY_BFG10K = common dso_local global i64 0, align 8
@INVENTORY_BFGAMMO = common dso_local global i64 0, align 8
@TFL_DEFAULT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotWantsToCamp(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CHARACTERISTIC_CAMPER, align 4
  %14 = call float @trap_Characteristic_BFloat(i32 %12, i32 %13, i32 0, i32 1)
  store float %14, float* %4, align 4
  %15 = load float, float* %4, align 4
  %16 = fpext float %15 to double
  %17 = fcmp olt double %16, 1.000000e-01
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %2, align 4
  br label %191

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LTG_TEAMHELP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %68, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LTG_TEAMACCOMPANY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %68, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LTG_DEFENDKEYAREA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %68, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LTG_GETFLAG, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %68, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LTG_RUSHBASE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %68, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LTG_CAMP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LTG_CAMPORDER, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LTG_PATROL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %56, %50, %44, %38, %32, %26, %20
  %69 = load i32, i32* @qfalse, align 4
  store i32 %69, i32* %2, align 4
  br label %191

70:                                               ; preds = %62
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sitofp i32 %73 to float
  %75 = call i32 (...) @FloatTime()
  %76 = sub nsw i32 %75, 60
  %77 = sitofp i32 %76 to float
  %78 = load float, float* %4, align 4
  %79 = fsub float 1.000000e+00, %78
  %80 = fmul float 3.000000e+02, %79
  %81 = fadd float %77, %80
  %82 = fcmp ogt float %74, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* @qfalse, align 4
  store i32 %84, i32* %2, align 4
  br label %191

85:                                               ; preds = %70
  %86 = call float (...) @random()
  %87 = load float, float* %4, align 4
  %88 = fcmp ogt float %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = call i32 (...) @FloatTime()
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @qfalse, align 4
  store i32 %93, i32* %2, align 4
  br label %191

94:                                               ; preds = %85
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = call i32 @BotAggression(%struct.TYPE_10__* %95)
  %97 = icmp slt i32 %96, 50
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @qfalse, align 4
  store i32 %99, i32* %2, align 4
  br label %191

100:                                              ; preds = %94
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @INVENTORY_ROCKETLAUNCHER, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %100
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @INVENTORY_ROCKETS, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 10
  br i1 %115, label %116, label %150

116:                                              ; preds = %108, %100
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @INVENTORY_RAILGUN, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @INVENTORY_SLUGS, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %130, 10
  br i1 %131, label %132, label %150

132:                                              ; preds = %124, %116
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @INVENTORY_BFG10K, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %132
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @INVENTORY_BFGAMMO, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %146, 10
  br i1 %147, label %148, label %150

148:                                              ; preds = %140, %132
  %149 = load i32, i32* @qfalse, align 4
  store i32 %149, i32* %2, align 4
  br label %191

150:                                              ; preds = %140, %124, %108
  store i32 99999, i32* %7, align 4
  %151 = call i32 @trap_BotGetNextCampSpotGoal(i32 0, %struct.TYPE_11__* %8)
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %176, %150
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %179

155:                                              ; preds = %152
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @TFL_DEFAULT, align 4
  %165 = call i32 @trap_AAS_AreaTravelTimeToGoalArea(i32 %158, i32 %161, i32 %163, i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %155
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %7, align 4
  %174 = call i32 @memcpy(%struct.TYPE_11__* %9, %struct.TYPE_11__* %8, i32 4)
  br label %175

175:                                              ; preds = %172, %168, %155
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @trap_BotGetNextCampSpotGoal(i32 %177, %struct.TYPE_11__* %8)
  store i32 %178, i32* %5, align 4
  br label %152

179:                                              ; preds = %152
  %180 = load i32, i32* %7, align 4
  %181 = icmp sgt i32 %180, 150
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32, i32* @qfalse, align 4
  store i32 %183, i32* %2, align 4
  br label %191

184:                                              ; preds = %179
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %186 = call i32 @BotGoCamp(%struct.TYPE_10__* %185, %struct.TYPE_11__* %9)
  %187 = load i32, i32* @qfalse, align 4
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* @qtrue, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %184, %182, %148, %98, %89, %83, %68, %18
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @FloatTime(...) #1

declare dso_local float @random(...) #1

declare dso_local i32 @BotAggression(%struct.TYPE_10__*) #1

declare dso_local i32 @trap_BotGetNextCampSpotGoal(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @trap_AAS_AreaTravelTimeToGoalArea(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @BotGoCamp(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
