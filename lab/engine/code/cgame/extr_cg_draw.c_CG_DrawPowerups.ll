; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawPowerups.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawPowerups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, float, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i32* }
%struct.TYPE_8__ = type { i32 }

@MAX_POWERUPS = common dso_local global i32 0, align 4
@CG_DrawPowerups.colors = internal global [2 x [4 x float]] [[4 x float] [float 0x3FC99999A0000000, float 1.000000e+00, float 0x3FC99999A0000000, float 1.000000e+00], [4 x float] [float 1.000000e+00, float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 1.000000e+00]], align 16
@cg = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@ICON_SIZE = common dso_local global i32 0, align 4
@CHAR_WIDTH = common dso_local global i32 0, align 4
@POWERUP_BLINKS = common dso_local global i32 0, align 4
@POWERUP_BLINK_TIME = common dso_local global i32 0, align 4
@PULSE_TIME = common dso_local global float 0.000000e+00, align 4
@PULSE_SCALE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @CG_DrawPowerups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @CG_DrawPowerups(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  store float %0, float* %3, align 4
  %20 = load i32, i32* @MAX_POWERUPS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %24 = load i32, i32* @MAX_POWERUPS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 3), align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %11, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @STAT_HEALTH, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load float, float* %3, align 4
  store float %37, float* %2, align 4
  store i32 1, i32* %18, align 4
  br label %277

38:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %132, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MAX_POWERUPS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %135

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %132

53:                                               ; preds = %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @INT_MAX, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %132

64:                                               ; preds = %53
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %132

77:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %118, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %26, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %113, %89
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %23, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %23, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %26, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %26, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %9, align 4
  br label %92

116:                                              ; preds = %92
  br label %121

117:                                              ; preds = %82
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %78

121:                                              ; preds = %116, %78
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %23, i64 %124
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %26, i64 %128
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %121, %76, %63, %52
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %39

135:                                              ; preds = %39
  %136 = load i32, i32* @ICON_SIZE, align 4
  %137 = sub nsw i32 640, %136
  %138 = load i32, i32* @CHAR_WIDTH, align 4
  %139 = mul nsw i32 %138, 2
  %140 = sub nsw i32 %137, %139
  store i32 %140, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %271, %135
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %274

145:                                              ; preds = %141
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %23, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call %struct.TYPE_8__* @BG_FindItemForPowerup(i32 %149)
  store %struct.TYPE_8__* %150, %struct.TYPE_8__** %13, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %152 = icmp ne %struct.TYPE_8__* %151, null
  br i1 %152, label %153, label %270

153:                                              ; preds = %145
  store i32 1, i32* %15, align 4
  %154 = load i32, i32* @ICON_SIZE, align 4
  %155 = sitofp i32 %154 to float
  %156 = load float, float* %3, align 4
  %157 = fsub float %156, %155
  store float %157, float* %3, align 4
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [2 x [4 x float]], [2 x [4 x float]]* @CG_DrawPowerups.colors, i64 0, i64 %159
  %161 = getelementptr inbounds [4 x float], [4 x float]* %160, i64 0, i64 0
  %162 = call i32 @trap_R_SetColor(float* %161)
  %163 = load i32, i32* %14, align 4
  %164 = load float, float* %3, align 4
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %26, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %168, 1000
  %170 = call i32 @CG_DrawField(i32 %163, float %164, i32 2, i32 %169)
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %23, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %173, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %183 = sub nsw i32 %181, %182
  %184 = load i32, i32* @POWERUP_BLINKS, align 4
  %185 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %186 = mul nsw i32 %184, %185
  %187 = icmp sge i32 %183, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %153
  %189 = call i32 @trap_R_SetColor(float* null)
  br label %214

190:                                              ; preds = %153
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %193 = sub nsw i32 %191, %192
  %194 = sitofp i32 %193 to float
  %195 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %196 = sitofp i32 %195 to float
  %197 = fdiv float %194, %196
  store float %197, float* %17, align 4
  %198 = load float, float* %17, align 4
  %199 = fptosi float %198 to i32
  %200 = sitofp i32 %199 to float
  %201 = load float, float* %17, align 4
  %202 = fsub float %201, %200
  store float %202, float* %17, align 4
  %203 = load float, float* %17, align 4
  %204 = load float*, float** %19, align 8
  %205 = getelementptr inbounds float, float* %204, i64 3
  store float %203, float* %205, align 4
  %206 = load float*, float** %19, align 8
  %207 = getelementptr inbounds float, float* %206, i64 2
  store float %203, float* %207, align 4
  %208 = load float*, float** %19, align 8
  %209 = getelementptr inbounds float, float* %208, i64 1
  store float %203, float* %209, align 4
  %210 = load float*, float** %19, align 8
  %211 = getelementptr inbounds float, float* %210, i64 0
  store float %203, float* %211, align 4
  %212 = load float*, float** %19, align 8
  %213 = call i32 @trap_R_SetColor(float* %212)
  br label %214

214:                                              ; preds = %190, %188
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %23, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %215, %219
  br i1 %220, label %221, label %248

221:                                              ; preds = %214
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %223 = sitofp i32 %222 to float
  %224 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 2), align 8
  %225 = fsub float %223, %224
  %226 = load float, float* @PULSE_TIME, align 4
  %227 = fcmp olt float %225, %226
  br i1 %227, label %228, label %248

228:                                              ; preds = %221
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %230 = sitofp i32 %229 to float
  %231 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 2), align 8
  %232 = fsub float %230, %231
  %233 = load float, float* @PULSE_TIME, align 4
  %234 = fdiv float %232, %233
  %235 = fpext float %234 to double
  %236 = fsub double 1.000000e+00, %235
  %237 = fptrunc double %236 to float
  store float %237, float* %17, align 4
  %238 = load i32, i32* @ICON_SIZE, align 4
  %239 = sitofp i32 %238 to double
  %240 = load double, double* @PULSE_SCALE, align 8
  %241 = fsub double %240, 1.000000e+00
  %242 = load float, float* %17, align 4
  %243 = fpext float %242 to double
  %244 = fmul double %241, %243
  %245 = fadd double 1.000000e+00, %244
  %246 = fmul double %239, %245
  %247 = fptrunc double %246 to float
  store float %247, float* %16, align 4
  br label %251

248:                                              ; preds = %221, %214
  %249 = load i32, i32* @ICON_SIZE, align 4
  %250 = sitofp i32 %249 to float
  store float %250, float* %16, align 4
  br label %251

251:                                              ; preds = %248, %228
  %252 = load float, float* %16, align 4
  %253 = fsub float 6.400000e+02, %252
  %254 = fptosi float %253 to i32
  %255 = load float, float* %3, align 4
  %256 = load i32, i32* @ICON_SIZE, align 4
  %257 = sdiv i32 %256, 2
  %258 = sitofp i32 %257 to float
  %259 = fadd float %255, %258
  %260 = load float, float* %16, align 4
  %261 = fdiv float %260, 2.000000e+00
  %262 = fsub float %259, %261
  %263 = load float, float* %16, align 4
  %264 = load float, float* %16, align 4
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @trap_R_RegisterShader(i32 %267)
  %269 = call i32 @CG_DrawPic(i32 %254, float %262, float %263, float %264, i32 %268)
  br label %270

270:                                              ; preds = %251, %145
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  br label %141

274:                                              ; preds = %141
  %275 = call i32 @trap_R_SetColor(float* null)
  %276 = load float, float* %3, align 4
  store float %276, float* %2, align 4
  store i32 1, i32* %18, align 4
  br label %277

277:                                              ; preds = %274, %36
  %278 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %278)
  %279 = load float, float* %2, align 4
  ret float %279
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @BG_FindItemForPowerup(i32) #2

declare dso_local i32 @trap_R_SetColor(float*) #2

declare dso_local i32 @CG_DrawField(i32, float, i32, i32) #2

declare dso_local i32 @CG_DrawPic(i32, float, float, float, i32) #2

declare dso_local i32 @trap_R_RegisterShader(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
