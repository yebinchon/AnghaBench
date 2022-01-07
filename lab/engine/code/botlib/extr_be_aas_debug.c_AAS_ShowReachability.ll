; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_debug.c_AAS_ShowReachability.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_debug.c_AAS_ShowReachability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float }
%struct.TYPE_5__ = type { i32, float, float, i32, i32, i32 }

@qtrue = common dso_local global i32 0, align 4
@LINECOLOR_BLUE = common dso_local global i32 0, align 4
@LINECOLOR_YELLOW = common dso_local global i32 0, align 4
@TRAVELTYPE_MASK = common dso_local global i32 0, align 4
@TRAVEL_JUMP = common dso_local global i32 0, align 4
@TRAVEL_WALKOFFLEDGE = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@SE_HITGROUND = common dso_local global i32 0, align 4
@SE_ENTERWATER = common dso_local global i32 0, align 4
@SE_ENTERSLIME = common dso_local global i32 0, align 4
@SE_ENTERLAVA = common dso_local global i32 0, align 4
@SE_HITGROUNDDAMAGE = common dso_local global i32 0, align 4
@TRAVEL_ROCKETJUMP = common dso_local global i32 0, align 4
@SE_TOUCHJUMPPAD = common dso_local global i32 0, align 4
@SE_HITGROUNDAREA = common dso_local global i32 0, align 4
@TRAVEL_JUMPPAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_ShowReachability(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @qtrue, align 4
  %13 = call i32 @AAS_ShowAreaPolygons(i32 %11, i32 5, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LINECOLOR_BLUE, align 4
  %21 = load i32, i32* @LINECOLOR_YELLOW, align 4
  %22 = call i32 @AAS_DrawArrow(i32 %16, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @TRAVEL_JUMP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @TRAVEL_WALKOFFLEDGE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %101

38:                                               ; preds = %30, %1
  %39 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aassettings, i32 0, i32 0), align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @AAS_HorizontalVelocityForJump(float %39, i32 %42, i32 %45, float* %6)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load float*, float** %3, align 8
  %54 = call i32 @VectorSubtract(i32 %49, i32 %52, float* %53)
  %55 = load float*, float** %3, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  store float 0.000000e+00, float* %56, align 4
  %57 = load float*, float** %3, align 8
  %58 = call i32 @VectorNormalize(float* %57)
  %59 = load float*, float** %3, align 8
  %60 = load float, float* %6, align 4
  %61 = load float*, float** %5, align 8
  %62 = call i32 @VectorScale(float* %59, float %60, float* %61)
  %63 = load float*, float** %4, align 8
  %64 = call i32 @VectorClear(float* %63)
  %65 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aassettings, i32 0, i32 0), align 4
  %66 = load float*, float** %4, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  store float %65, float* %67, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PRESENCE_NORMAL, align 4
  %72 = load i32, i32* @qtrue, align 4
  %73 = load float*, float** %5, align 8
  %74 = load float*, float** %4, align 8
  %75 = load i32, i32* @SE_HITGROUND, align 4
  %76 = load i32, i32* @SE_ENTERWATER, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SE_ENTERSLIME, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SE_ENTERLAVA, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @qtrue, align 4
  %85 = call i32 @AAS_PredictClientMovement(i32* %8, i32 -1, i32 %70, i32 %71, i32 %72, float* %73, float* %74, i32 3, i32 30, float 0x3FB99999A0000000, i32 %83, i32 0, i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @TRAVEL_JUMP, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %38
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = load float*, float** %3, align 8
  %96 = call i32 @AAS_JumpReachRunStart(%struct.TYPE_5__* %94, float* %95)
  %97 = load float*, float** %3, align 8
  %98 = load i32, i32* @LINECOLOR_BLUE, align 4
  %99 = call i32 @AAS_DrawCross(float* %97, i32 4, i32 %98)
  br label %100

100:                                              ; preds = %93, %38
  br label %223

101:                                              ; preds = %30
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @TRAVEL_ROCKETJUMP, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %164

109:                                              ; preds = %101
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call float @AAS_RocketJumpZVelocity(i32 %112)
  store float %113, float* %7, align 4
  %114 = load float, float* %7, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @AAS_HorizontalVelocityForJump(float %114, i32 %117, i32 %120, float* %6)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load float*, float** %3, align 8
  %129 = call i32 @VectorSubtract(i32 %124, i32 %127, float* %128)
  %130 = load float*, float** %3, align 8
  %131 = getelementptr inbounds float, float* %130, i64 2
  store float 0.000000e+00, float* %131, align 4
  %132 = load float*, float** %3, align 8
  %133 = call i32 @VectorNormalize(float* %132)
  %134 = load float*, float** %3, align 8
  %135 = load float, float* %6, align 4
  %136 = load float*, float** %4, align 8
  %137 = call i32 @VectorScale(float* %134, float %135, float* %136)
  %138 = load float*, float** %5, align 8
  %139 = load float, float* %7, align 4
  %140 = call i32 @VectorSet(float* %138, i32 0, i32 0, float %139)
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @PRESENCE_NORMAL, align 4
  %145 = load i32, i32* @qtrue, align 4
  %146 = load float*, float** %5, align 8
  %147 = load float*, float** %4, align 8
  %148 = load i32, i32* @SE_ENTERWATER, align 4
  %149 = load i32, i32* @SE_ENTERSLIME, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @SE_ENTERLAVA, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @SE_TOUCHJUMPPAD, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @SE_HITGROUNDAREA, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @qtrue, align 4
  %163 = call i32 @AAS_PredictClientMovement(i32* %8, i32 -1, i32 %143, i32 %144, i32 %145, float* %146, float* %147, i32 30, i32 30, float 0x3FB99999A0000000, i32 %158, i32 %161, i32 %162)
  br label %222

164:                                              ; preds = %101
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @TRAVEL_JUMPPAD, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %221

172:                                              ; preds = %164
  %173 = load float*, float** %4, align 8
  %174 = call i32 @VectorSet(float* %173, i32 0, i32 0, float 0.000000e+00)
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load float*, float** %3, align 8
  %182 = call i32 @VectorSubtract(i32 %177, i32 %180, float* %181)
  %183 = load float*, float** %3, align 8
  %184 = getelementptr inbounds float, float* %183, i64 2
  store float 0.000000e+00, float* %184, align 4
  %185 = load float*, float** %3, align 8
  %186 = call i32 @VectorNormalize(float* %185)
  %187 = load float*, float** %3, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load float, float* %189, align 4
  %191 = load float*, float** %5, align 8
  %192 = call i32 @VectorScale(float* %187, float %190, float* %191)
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load float, float* %194, align 4
  %196 = load float*, float** %5, align 8
  %197 = getelementptr inbounds float, float* %196, i64 2
  store float %195, float* %197, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @PRESENCE_NORMAL, align 4
  %202 = load i32, i32* @qtrue, align 4
  %203 = load float*, float** %5, align 8
  %204 = load float*, float** %4, align 8
  %205 = load i32, i32* @SE_ENTERWATER, align 4
  %206 = load i32, i32* @SE_ENTERSLIME, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @SE_ENTERLAVA, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @SE_TOUCHJUMPPAD, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @SE_HITGROUNDAREA, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @qtrue, align 4
  %220 = call i32 @AAS_PredictClientMovement(i32* %8, i32 -1, i32 %200, i32 %201, i32 %202, float* %203, float* %204, i32 30, i32 30, float 0x3FB99999A0000000, i32 %215, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %172, %164
  br label %222

222:                                              ; preds = %221, %109
  br label %223

223:                                              ; preds = %222, %100
  ret void
}

declare dso_local i32 @AAS_ShowAreaPolygons(i32, i32, i32) #1

declare dso_local i32 @AAS_DrawArrow(i32, i32, i32, i32) #1

declare dso_local i32 @AAS_HorizontalVelocityForJump(float, i32, i32, float*) #1

declare dso_local i32 @VectorSubtract(i32, i32, float*) #1

declare dso_local i32 @VectorNormalize(float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @AAS_PredictClientMovement(i32*, i32, i32, i32, i32, float*, float*, i32, i32, float, i32, i32, i32) #1

declare dso_local i32 @AAS_JumpReachRunStart(%struct.TYPE_5__*, float*) #1

declare dso_local i32 @AAS_DrawCross(float*, i32, i32) #1

declare dso_local float @AAS_RocketJumpZVelocity(i32) #1

declare dso_local i32 @VectorSet(float*, i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
