; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotAIBlocked.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotAIBlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { double, i32, i64, i64, i64, i32, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32, i64*, i32, i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@RESULTTYPE_INSOLIDAREA = common dso_local global i64 0, align 8
@max_bspmodelindex = common dso_local global i64 0, align 8
@MOVERESULT_ONTOPOFOBSTACLE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@MOVE_WALK = common dso_local global i32 0, align 4
@BFL_AVOIDRIGHT = common dso_local global i32 0, align 4
@MOVE_CROUCH = common dso_local global i32 0, align 4
@AINode_Seek_NBG = common dso_local global i64 0, align 8
@AINode_Seek_LTG = common dso_local global i64 0, align 8
@MAX_NETNAME = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotAIBlocked(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_25__, align 8
  %14 = alloca %struct.TYPE_24__, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64* null, i64** %12, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = call double (...) @FloatTime()
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store double %20, double* %22, align 8
  br label %208

23:                                               ; preds = %3
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RESULTTYPE_INSOLIDAREA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = call i32 @BotRandomMove(%struct.TYPE_22__* %30, %struct.TYPE_23__* %31)
  br label %208

33:                                               ; preds = %23
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @BotEntityInfo(i32 %36, %struct.TYPE_25__* %13)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %100

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %100

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @max_bspmodelindex, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %100

49:                                               ; preds = %44
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @BotGetActivateGoal(%struct.TYPE_22__* %50, i32 %52, %struct.TYPE_24__* %14)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %49
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = icmp ne %struct.TYPE_19__* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 7
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 7
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %70, align 8
  br label %71

71:                                               ; preds = %68, %61, %56
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @BotIsGoingToActivateEntity(%struct.TYPE_22__* %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %80 = call i32 @BotGoForActivateGoal(%struct.TYPE_22__* %79, %struct.TYPE_24__* %14)
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MOVERESULT_ONTOPOFOBSTACLE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @trap_AAS_AreaReachability(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %208

95:                                               ; preds = %88, %81
  br label %99

96:                                               ; preds = %49
  %97 = load i32, i32* @qtrue, align 4
  %98 = call i32 @BotEnableActivateGoalAreas(%struct.TYPE_24__* %14, i32 %97)
  br label %99

99:                                               ; preds = %96, %95
  br label %100

100:                                              ; preds = %99, %44, %40, %33
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %9, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  store i64 %112, i64* %114, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  store i64 0, i64* %116, align 8
  %117 = load i64*, i64** %9, align 8
  %118 = call double @VectorNormalize(i64* %117)
  %119 = fcmp olt double %118, 1.000000e-01
  br i1 %119, label %120, label %128

120:                                              ; preds = %100
  %121 = load i64*, i64** %11, align 8
  %122 = call i32 (...) @random()
  %123 = mul nsw i32 360, %122
  %124 = call i32 @VectorSet(i64* %121, i32 0, i32 %123, i32 0)
  %125 = load i64*, i64** %11, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = call i32 @AngleVectors(i64* %125, i64* %126, i32* null, i32* null)
  br label %128

128:                                              ; preds = %120, %100
  %129 = load i32, i32* @MOVE_WALK, align 4
  store i32 %129, i32* %7, align 4
  %130 = load i64*, i64** %9, align 8
  %131 = load i64*, i64** %12, align 8
  %132 = load i64*, i64** %10, align 8
  %133 = call i32 @CrossProduct(i64* %130, i64* %131, i64* %132)
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @BFL_AVOIDRIGHT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %128
  %141 = load i64*, i64** %10, align 8
  %142 = load i64*, i64** %10, align 8
  %143 = call i32 @VectorNegate(i64* %141, i64* %142)
  br label %144

144:                                              ; preds = %140, %128
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @MOVE_CROUCH, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load i64*, i64** %9, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @trap_BotMoveInDirection(i32 %151, i64* %152, i32 400, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %181, label %156

156:                                              ; preds = %148, %144
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @trap_BotMoveInDirection(i32 %159, i64* %160, i32 400, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %156
  %165 = load i32, i32* @BFL_AVOIDRIGHT, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = xor i32 %168, %165
  store i32 %169, i32* %167, align 8
  %170 = load i64*, i64** %10, align 8
  %171 = load i64*, i64** %9, align 8
  %172 = load i64*, i64** %10, align 8
  %173 = call i32 @VectorMA(i64* %170, i32 -1, i64* %171, i64* %172)
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = load i64*, i64** %10, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @trap_BotMoveInDirection(i32 %176, i64* %177, i32 400, i32 %178)
  br label %180

180:                                              ; preds = %164, %156
  br label %181

181:                                              ; preds = %180, %148
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load double, double* %183, align 8
  %185 = call double (...) @FloatTime()
  %186 = fsub double %185, 4.000000e-01
  %187 = fcmp olt double %184, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %181
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @AINode_Seek_NBG, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 4
  store i64 0, i64* %196, align 8
  br label %207

197:                                              ; preds = %188
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @AINode_Seek_LTG, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 3
  store i64 0, i64* %205, align 8
  br label %206

206:                                              ; preds = %203, %197
  br label %207

207:                                              ; preds = %206, %194
  br label %208

208:                                              ; preds = %19, %29, %94, %207, %181
  ret void
}

declare dso_local double @FloatTime(...) #1

declare dso_local i32 @BotRandomMove(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @BotGetActivateGoal(%struct.TYPE_22__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @BotIsGoingToActivateEntity(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @BotGoForActivateGoal(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i64 @trap_AAS_AreaReachability(i32) #1

declare dso_local i32 @BotEnableActivateGoalAreas(%struct.TYPE_24__*, i32) #1

declare dso_local double @VectorNormalize(i64*) #1

declare dso_local i32 @VectorSet(i64*, i32, i32, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @AngleVectors(i64*, i64*, i32*, i32*) #1

declare dso_local i32 @CrossProduct(i64*, i64*, i64*) #1

declare dso_local i32 @VectorNegate(i64*, i64*) #1

declare dso_local i32 @trap_BotMoveInDirection(i32, i64*, i32, i32) #1

declare dso_local i32 @VectorMA(i64*, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
