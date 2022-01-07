; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawLagometer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawLagometer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, float*, i32, float*, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@cg_lagometer = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@MAX_LAGOMETER_RANGE = common dso_local global float 0.000000e+00, align 4
@lagometer = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@LAG_SAMPLES = common dso_local global i32 0, align 4
@g_color_table = common dso_local global i32** null, align 8
@COLOR_YELLOW = common dso_local global i32 0, align 4
@COLOR_BLUE = common dso_local global i32 0, align 4
@MAX_LAGOMETER_PING = common dso_local global float 0.000000e+00, align 4
@SNAPFLAG_RATE_DELAYED = common dso_local global i32 0, align 4
@COLOR_GREEN = common dso_local global i32 0, align 4
@COLOR_RED = common dso_local global i32 0, align 4
@cg_nopredict = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@cg_synchronousClients = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"snc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawLagometer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawLagometer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_lagometer, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %0
  %20 = call i32 (...) @CG_DrawDisconnect()
  br label %256

21:                                               ; preds = %16
  store i32 592, i32* %2, align 4
  store i32 432, i32* %3, align 4
  %22 = call i32 @trap_R_SetColor(i32* null)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0, i32 1), align 4
  %26 = call i32 @CG_DrawPic(i32 %23, i32 %24, i32 48, i32 48, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = sitofp i32 %27 to float
  store float %28, float* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sitofp i32 %29 to float
  store float %30, float* %7, align 4
  store float 4.800000e+01, float* %8, align 4
  store float 4.800000e+01, float* %9, align 4
  %31 = call i32 @CG_AdjustFrom640(float* %6, float* %7, float* %8, float* %9)
  store i32 -1, i32* %12, align 4
  %32 = load float, float* %9, align 4
  %33 = fdiv float %32, 3.000000e+00
  store float %33, float* %11, align 4
  %34 = load float, float* %7, align 4
  %35 = load float, float* %11, align 4
  %36 = fadd float %34, %35
  store float %36, float* %10, align 4
  %37 = load float, float* %11, align 4
  %38 = load float, float* @MAX_LAGOMETER_RANGE, align 4
  %39 = fdiv float %37, %38
  store float %39, float* %13, align 4
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %126, %21
  %41 = load i32, i32* %1, align 4
  %42 = sitofp i32 %41 to float
  %43 = load float, float* %8, align 4
  %44 = fcmp olt float %42, %43
  br i1 %44, label %45, label %129

45:                                               ; preds = %40
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lagometer, i32 0, i32 0), align 8
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %1, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* @LAG_SAMPLES, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  store i32 %52, i32* %4, align 4
  %53 = load float*, float** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lagometer, i32 0, i32 1), align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  store float %57, float* %5, align 4
  %58 = load float, float* %13, align 4
  %59 = load float, float* %5, align 4
  %60 = fmul float %59, %58
  store float %60, float* %5, align 4
  %61 = load float, float* %5, align 4
  %62 = fcmp ogt float %61, 0.000000e+00
  br i1 %62, label %63, label %92

63:                                               ; preds = %45
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  %67 = load i32**, i32*** @g_color_table, align 8
  %68 = load i32, i32* @COLOR_YELLOW, align 4
  %69 = call i64 @ColorIndex(i32 %68)
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @trap_R_SetColor(i32* %71)
  br label %73

73:                                               ; preds = %66, %63
  %74 = load float, float* %5, align 4
  %75 = load float, float* %11, align 4
  %76 = fcmp ogt float %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load float, float* %11, align 4
  store float %78, float* %5, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = load float, float* %6, align 4
  %81 = load float, float* %8, align 4
  %82 = fadd float %80, %81
  %83 = load i32, i32* %1, align 4
  %84 = sitofp i32 %83 to float
  %85 = fsub float %82, %84
  %86 = load float, float* %10, align 4
  %87 = load float, float* %5, align 4
  %88 = fsub float %86, %87
  %89 = load float, float* %5, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0, i32 0), align 8
  %91 = call i32 @trap_R_DrawStretchPic(float %85, float %88, i32 1, float %89, i32 0, i32 0, i32 0, i32 0, i32 %90)
  br label %125

92:                                               ; preds = %45
  %93 = load float, float* %5, align 4
  %94 = fcmp olt float %93, 0.000000e+00
  br i1 %94, label %95, label %124

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 2
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  store i32 2, i32* %12, align 4
  %99 = load i32**, i32*** @g_color_table, align 8
  %100 = load i32, i32* @COLOR_BLUE, align 4
  %101 = call i64 @ColorIndex(i32 %100)
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @trap_R_SetColor(i32* %103)
  br label %105

105:                                              ; preds = %98, %95
  %106 = load float, float* %5, align 4
  %107 = fneg float %106
  store float %107, float* %5, align 4
  %108 = load float, float* %5, align 4
  %109 = load float, float* %11, align 4
  %110 = fcmp ogt float %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load float, float* %11, align 4
  store float %112, float* %5, align 4
  br label %113

113:                                              ; preds = %111, %105
  %114 = load float, float* %6, align 4
  %115 = load float, float* %8, align 4
  %116 = fadd float %114, %115
  %117 = load i32, i32* %1, align 4
  %118 = sitofp i32 %117 to float
  %119 = fsub float %116, %118
  %120 = load float, float* %10, align 4
  %121 = load float, float* %5, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0, i32 0), align 8
  %123 = call i32 @trap_R_DrawStretchPic(float %119, float %120, i32 1, float %121, i32 0, i32 0, i32 0, i32 0, i32 %122)
  br label %124

124:                                              ; preds = %113, %92
  br label %125

125:                                              ; preds = %124, %79
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %1, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %1, align 4
  br label %40

129:                                              ; preds = %40
  %130 = load float, float* %9, align 4
  %131 = fdiv float %130, 2.000000e+00
  store float %131, float* %11, align 4
  %132 = load float, float* %11, align 4
  %133 = load float, float* @MAX_LAGOMETER_PING, align 4
  %134 = fdiv float %132, %133
  store float %134, float* %13, align 4
  store i32 0, i32* %1, align 4
  br label %135

135:                                              ; preds = %240, %129
  %136 = load i32, i32* %1, align 4
  %137 = sitofp i32 %136 to float
  %138 = load float, float* %8, align 4
  %139 = fcmp olt float %137, %138
  br i1 %139, label %140, label %243

140:                                              ; preds = %135
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lagometer, i32 0, i32 2), align 8
  %142 = sub nsw i32 %141, 1
  %143 = load i32, i32* %1, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* @LAG_SAMPLES, align 4
  %146 = sub nsw i32 %145, 1
  %147 = and i32 %144, %146
  store i32 %147, i32* %4, align 4
  %148 = load float*, float** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lagometer, i32 0, i32 3), align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  %152 = load float, float* %151, align 4
  store float %152, float* %5, align 4
  %153 = load float, float* %5, align 4
  %154 = fcmp ogt float %153, 0.000000e+00
  br i1 %154, label %155, label %210

155:                                              ; preds = %140
  %156 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lagometer, i32 0, i32 4), align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SNAPFLAG_RATE_DELAYED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %155
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 5
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  store i32 5, i32* %12, align 4
  %168 = load i32**, i32*** @g_color_table, align 8
  %169 = load i32, i32* @COLOR_YELLOW, align 4
  %170 = call i64 @ColorIndex(i32 %169)
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @trap_R_SetColor(i32* %172)
  br label %174

174:                                              ; preds = %167, %164
  br label %186

175:                                              ; preds = %155
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 3
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  store i32 3, i32* %12, align 4
  %179 = load i32**, i32*** @g_color_table, align 8
  %180 = load i32, i32* @COLOR_GREEN, align 4
  %181 = call i64 @ColorIndex(i32 %180)
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @trap_R_SetColor(i32* %183)
  br label %185

185:                                              ; preds = %178, %175
  br label %186

186:                                              ; preds = %185, %174
  %187 = load float, float* %5, align 4
  %188 = load float, float* %13, align 4
  %189 = fmul float %187, %188
  store float %189, float* %5, align 4
  %190 = load float, float* %5, align 4
  %191 = load float, float* %11, align 4
  %192 = fcmp ogt float %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load float, float* %11, align 4
  store float %194, float* %5, align 4
  br label %195

195:                                              ; preds = %193, %186
  %196 = load float, float* %6, align 4
  %197 = load float, float* %8, align 4
  %198 = fadd float %196, %197
  %199 = load i32, i32* %1, align 4
  %200 = sitofp i32 %199 to float
  %201 = fsub float %198, %200
  %202 = load float, float* %7, align 4
  %203 = load float, float* %9, align 4
  %204 = fadd float %202, %203
  %205 = load float, float* %5, align 4
  %206 = fsub float %204, %205
  %207 = load float, float* %5, align 4
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0, i32 0), align 8
  %209 = call i32 @trap_R_DrawStretchPic(float %201, float %206, i32 1, float %207, i32 0, i32 0, i32 0, i32 0, i32 %208)
  br label %239

210:                                              ; preds = %140
  %211 = load float, float* %5, align 4
  %212 = fcmp olt float %211, 0.000000e+00
  br i1 %212, label %213, label %238

213:                                              ; preds = %210
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 4
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  store i32 4, i32* %12, align 4
  %217 = load i32**, i32*** @g_color_table, align 8
  %218 = load i32, i32* @COLOR_RED, align 4
  %219 = call i64 @ColorIndex(i32 %218)
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @trap_R_SetColor(i32* %221)
  br label %223

223:                                              ; preds = %216, %213
  %224 = load float, float* %6, align 4
  %225 = load float, float* %8, align 4
  %226 = fadd float %224, %225
  %227 = load i32, i32* %1, align 4
  %228 = sitofp i32 %227 to float
  %229 = fsub float %226, %228
  %230 = load float, float* %7, align 4
  %231 = load float, float* %9, align 4
  %232 = fadd float %230, %231
  %233 = load float, float* %11, align 4
  %234 = fsub float %232, %233
  %235 = load float, float* %11, align 4
  %236 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0, i32 0), align 8
  %237 = call i32 @trap_R_DrawStretchPic(float %229, float %234, i32 1, float %235, i32 0, i32 0, i32 0, i32 0, i32 %236)
  br label %238

238:                                              ; preds = %223, %210
  br label %239

239:                                              ; preds = %238, %195
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %1, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %1, align 4
  br label %135

243:                                              ; preds = %135
  %244 = call i32 @trap_R_SetColor(i32* null)
  %245 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_nopredict, i32 0, i32 0), align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  %248 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_synchronousClients, i32 0, i32 0), align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247, %243
  %251 = load i32, i32* %2, align 4
  %252 = load i32, i32* %3, align 4
  %253 = call i32 @CG_DrawBigString(i32 %251, i32 %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double 1.000000e+00)
  br label %254

254:                                              ; preds = %250, %247
  %255 = call i32 (...) @CG_DrawDisconnect()
  br label %256

256:                                              ; preds = %254, %19
  ret void
}

declare dso_local i32 @CG_DrawDisconnect(...) #1

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CG_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i64 @ColorIndex(i32) #1

declare dso_local i32 @trap_R_DrawStretchPic(float, float, i32, float, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CG_DrawBigString(i32, i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
