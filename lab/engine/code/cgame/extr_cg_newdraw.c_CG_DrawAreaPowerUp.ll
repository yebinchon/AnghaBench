; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawAreaPowerUp.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawAreaPowerUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64*, i32* }
%struct.TYPE_9__ = type { float, float, double, float }
%struct.TYPE_11__ = type { i32 }

@MAX_POWERUPS = common dso_local global i32 0, align 4
@HUD_VERTICAL = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@POWERUP_BLINKS = common dso_local global i32 0, align 4
@POWERUP_BLINK_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, float, float, float*)* @CG_DrawAreaPowerUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawAreaPowerUp(%struct.TYPE_9__* %0, i32 %1, float %2, float %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca float, align 4
  %23 = alloca %struct.TYPE_9__, align 8
  %24 = alloca float*, align 8
  %25 = alloca i32, align 4
  %26 = alloca float*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %27 = load i32, i32* @MAX_POWERUPS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %31 = load i32, i32* @MAX_POWERUPS, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store float %36, float* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store float %40, float* %41, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load double, double* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store double %44, double* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load float, float* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  store float %48, float* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @HUD_VERTICAL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %5
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  br label %57

55:                                               ; preds = %5
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi float* [ %54, %53 ], [ %56, %55 ]
  store float* %58, float** %24, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1), align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %19, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @STAT_HEALTH, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i32 1, i32* %25, align 4
  br label %279

69:                                               ; preds = %57
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %163, %69
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @MAX_POWERUPS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %166

74:                                               ; preds = %70
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %163

84:                                               ; preds = %74
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @INT_MAX, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %163

95:                                               ; preds = %84
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %20, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %163

108:                                              ; preds = %95
  store i32 0, i32* %16, align 4
  br label %109

109:                                              ; preds = %149, %108
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %152

113:                                              ; preds = %109
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %33, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %20, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %148

120:                                              ; preds = %113
  %121 = load i32, i32* %18, align 4
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %144, %120
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %123
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %30, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %30, i64 %134
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %33, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %33, i64 %142
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %127
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %17, align 4
  br label %123

147:                                              ; preds = %123
  br label %152

148:                                              ; preds = %113
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %109

152:                                              ; preds = %147, %109
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %30, i64 %155
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %33, i64 %159
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  br label %163

163:                                              ; preds = %152, %107, %94, %83
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %70

166:                                              ; preds = %70
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %274, %166
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %18, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %277

171:                                              ; preds = %167
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %30, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.TYPE_11__* @BG_FindItemForPowerup(i32 %175)
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %21, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %178 = icmp ne %struct.TYPE_11__* %177, null
  br i1 %178, label %179, label %273

179:                                              ; preds = %171
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %30, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %182, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %192 = sub nsw i32 %190, %191
  %193 = load i32, i32* @POWERUP_BLINKS, align 4
  %194 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %195 = mul nsw i32 %193, %194
  %196 = icmp sge i32 %192, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %179
  %198 = call i32 @trap_R_SetColor(float* null)
  br label %223

199:                                              ; preds = %179
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %202 = sub nsw i32 %200, %201
  %203 = sitofp i32 %202 to float
  %204 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %205 = sitofp i32 %204 to float
  %206 = fdiv float %203, %205
  store float %206, float* %22, align 4
  %207 = load float, float* %22, align 4
  %208 = fptosi float %207 to i32
  %209 = sitofp i32 %208 to float
  %210 = load float, float* %22, align 4
  %211 = fsub float %210, %209
  store float %211, float* %22, align 4
  %212 = load float, float* %22, align 4
  %213 = load float*, float** %26, align 8
  %214 = getelementptr inbounds float, float* %213, i64 3
  store float %212, float* %214, align 4
  %215 = load float*, float** %26, align 8
  %216 = getelementptr inbounds float, float* %215, i64 2
  store float %212, float* %216, align 4
  %217 = load float*, float** %26, align 8
  %218 = getelementptr inbounds float, float* %217, i64 1
  store float %212, float* %218, align 4
  %219 = load float*, float** %26, align 8
  %220 = getelementptr inbounds float, float* %219, i64 0
  store float %212, float* %220, align 4
  %221 = load float*, float** %26, align 8
  %222 = call i32 @trap_R_SetColor(float* %221)
  br label %223

223:                                              ; preds = %199, %197
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %225 = load float, float* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %227 = load float, float* %226, align 4
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %229 = load double, double* %228, align 8
  %230 = fmul double %229, 7.500000e-01
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %232 = load float, float* %231, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @trap_R_RegisterShader(i32 %235)
  %237 = call i32 @CG_DrawPic(float %225, float %227, double %230, float %232, i32 %236)
  %238 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %33, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sdiv i32 %242, 1000
  %244 = call i32 @Com_sprintf(i8* %238, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %243)
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %246 = load float, float* %245, align 8
  %247 = fpext float %246 to double
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %249 = load double, double* %248, align 8
  %250 = fmul double %249, 7.500000e-01
  %251 = fadd double %247, %250
  %252 = fadd double %251, 3.000000e+00
  %253 = fptrunc double %252 to float
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %255 = load float, float* %254, align 4
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %257 = load float, float* %256, align 8
  %258 = fadd float %255, %257
  %259 = load float, float* %9, align 4
  %260 = load float*, float** %10, align 8
  %261 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %262 = call i32 @CG_Text_Paint(float %253, float %258, float %259, float* %260, i8* %261, i32 0, i32 0, i32 0)
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %264 = load double, double* %263, align 8
  %265 = load float, float* %8, align 4
  %266 = fpext float %265 to double
  %267 = fadd double %264, %266
  %268 = load float*, float** %24, align 8
  %269 = load float, float* %268, align 4
  %270 = fpext float %269 to double
  %271 = fadd double %270, %267
  %272 = fptrunc double %271 to float
  store float %272, float* %268, align 4
  br label %273

273:                                              ; preds = %223, %171
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %15, align 4
  br label %167

277:                                              ; preds = %167
  %278 = call i32 @trap_R_SetColor(float* null)
  store i32 0, i32* %25, align 4
  br label %279

279:                                              ; preds = %277, %68
  %280 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %280)
  %281 = load i32, i32* %25, align 4
  switch i32 %281, label %283 [
    i32 0, label %282
    i32 1, label %282
  ]

282:                                              ; preds = %279, %279
  ret void

283:                                              ; preds = %279
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @BG_FindItemForPowerup(i32) #2

declare dso_local i32 @trap_R_SetColor(float*) #2

declare dso_local i32 @CG_DrawPic(float, float, double, float, i32) #2

declare dso_local i32 @trap_R_RegisterShader(i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @CG_Text_Paint(float, float, float, float*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
