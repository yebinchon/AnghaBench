; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_hl.c_HL_SplitBrush.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_hl.c_HL_SplitBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { float, i32 }
%struct.TYPE_30__ = type { i32, i32*, i32*, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__*, i32, i64 }
%struct.TYPE_27__ = type { i32, i32* }

@mapplanes = common dso_local global %struct.TYPE_29__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"HL_SplitBrush: only on back\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"HL_SplitBrush: only on front\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"HL_SplitBrush: no split winding\0A\00", align 1
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"HL_SplitBrush: WARNING huge split winding\0A\00", align 1
@SFL_TESTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"HL_SplitBrush: bogus brush after clip\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"HL_SplitBrush: numsides < 3\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"HL_SplitBrush: split removed brush\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"HL_SplitBrush: split not on both sides\0A\00", align 1
@SFL_VISIBLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"HL_SplitBrush: tiny volume after clip\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HL_SplitBrush(%struct.TYPE_30__* %0, i32 %1, i32 %2, %struct.TYPE_30__** %3, %struct.TYPE_30__** %4) #0 {
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__**, align 8
  %10 = alloca %struct.TYPE_30__**, align 8
  %11 = alloca [2 x %struct.TYPE_30__*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca [2 x %struct.TYPE_27__*], align 16
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca %struct.TYPE_28__*, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_30__** %3, %struct.TYPE_30__*** %9, align 8
  store %struct.TYPE_30__** %4, %struct.TYPE_30__*** %10, align 8
  %27 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %10, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %27, align 8
  %28 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %9, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %28, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** @mapplanes, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i64 %31
  store %struct.TYPE_29__* %32, %struct.TYPE_29__** %17, align 8
  store float 0.000000e+00, float* %23, align 4
  store float 0.000000e+00, float* %22, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %96, %5
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %99

39:                                               ; preds = %33
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  store %struct.TYPE_27__* %47, %struct.TYPE_27__** %14, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %49 = icmp ne %struct.TYPE_27__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %96

51:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %92, %51
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %52
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call float @DotProduct(i32 %65, i32 %68)
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = load float, float* %71, align 4
  %73 = fsub float %69, %72
  store float %73, float* %21, align 4
  %74 = load float, float* %21, align 4
  %75 = fcmp ogt float %74, 0.000000e+00
  br i1 %75, label %76, label %82

76:                                               ; preds = %58
  %77 = load float, float* %21, align 4
  %78 = load float, float* %22, align 4
  %79 = fcmp ogt float %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load float, float* %21, align 4
  store float %81, float* %22, align 4
  br label %82

82:                                               ; preds = %80, %76, %58
  %83 = load float, float* %21, align 4
  %84 = fcmp olt float %83, 0.000000e+00
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load float, float* %21, align 4
  %87 = load float, float* %23, align 4
  %88 = fcmp olt float %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load float, float* %21, align 4
  store float %90, float* %23, align 4
  br label %91

91:                                               ; preds = %89, %85, %82
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %52

95:                                               ; preds = %52
  br label %96

96:                                               ; preds = %95, %50
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %33

99:                                               ; preds = %33
  %100 = load float, float* %22, align 4
  %101 = fpext float %100 to double
  %102 = fcmp olt double %101, 1.000000e-01
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %105 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %104)
  %106 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %10, align 8
  store %struct.TYPE_30__* %105, %struct.TYPE_30__** %106, align 8
  %107 = call i32 @Log_Print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %512

108:                                              ; preds = %99
  %109 = load float, float* %23, align 4
  %110 = fpext float %109 to double
  %111 = fcmp ogt double %110, -1.000000e-01
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %114 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %113)
  %115 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %9, align 8
  store %struct.TYPE_30__* %114, %struct.TYPE_30__** %115, align 8
  %116 = call i32 @Log_Print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %512

117:                                              ; preds = %108
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = load float, float* %122, align 4
  %124 = call %struct.TYPE_27__* @BaseWindingForPlane(i32 %120, float %123)
  store %struct.TYPE_27__* %124, %struct.TYPE_27__** %14, align 8
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %156, %117
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %133 = icmp ne %struct.TYPE_27__* %132, null
  br label %134

134:                                              ; preds = %131, %125
  %135 = phi i1 [ false, %125 ], [ %133, %131 ]
  br i1 %135, label %136, label %159

136:                                              ; preds = %134
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** @mapplanes, align 8
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = xor i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i64 %147
  store %struct.TYPE_29__* %148, %struct.TYPE_29__** %18, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = load float, float* %153, align 4
  %155 = call i32 @ChopWindingInPlace(%struct.TYPE_27__** %14, i32 %151, float %154, i32 0)
  br label %156

156:                                              ; preds = %136
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %125

159:                                              ; preds = %134
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %161 = icmp ne %struct.TYPE_27__* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %164 = call i64 @WindingIsTiny(%struct.TYPE_27__* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %162, %159
  %167 = call i32 @Log_Print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %170 = call i32 @BrushMostlyOnSide(%struct.TYPE_30__* %168, %struct.TYPE_29__* %169)
  store i32 %170, i32* %24, align 4
  %171 = load i32, i32* %24, align 4
  %172 = load i32, i32* @PSIDE_FRONT, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %176 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %175)
  %177 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %9, align 8
  store %struct.TYPE_30__* %176, %struct.TYPE_30__** %177, align 8
  br label %178

178:                                              ; preds = %174, %166
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* @PSIDE_BACK, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %184 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %183)
  %185 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %10, align 8
  store %struct.TYPE_30__* %184, %struct.TYPE_30__** %185, align 8
  br label %186

186:                                              ; preds = %182, %178
  br label %512

187:                                              ; preds = %162
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %189 = call i64 @WindingIsHuge(%struct.TYPE_27__* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = call i32 @Log_Print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %187
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  store %struct.TYPE_27__* %194, %struct.TYPE_27__** %16, align 8
  store i32 0, i32* %12, align 4
  br label %195

195:                                              ; preds = %215, %193
  %196 = load i32, i32* %12, align 4
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %198, label %218

198:                                              ; preds = %195
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  %203 = call %struct.TYPE_30__* @AllocBrush(i32 %202)
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %205
  store %struct.TYPE_30__* %203, %struct.TYPE_30__** %206, align 8
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %211
  %213 = load %struct.TYPE_30__*, %struct.TYPE_30__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %213, i32 0, i32 4
  store i32 %209, i32* %214, align 8
  br label %215

215:                                              ; preds = %198
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %12, align 4
  br label %195

218:                                              ; preds = %195
  store i32 0, i32* %12, align 4
  br label %219

219:                                              ; preds = %301, %218
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %304

225:                                              ; preds = %219
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i64 %230
  store %struct.TYPE_28__* %231, %struct.TYPE_28__** %19, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %233, align 8
  store %struct.TYPE_27__* %234, %struct.TYPE_27__** %14, align 8
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %236 = icmp ne %struct.TYPE_27__* %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %225
  br label %301

238:                                              ; preds = %225
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %244 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %243, i32 0, i32 0
  %245 = load float, float* %244, align 4
  %246 = getelementptr inbounds [2 x %struct.TYPE_27__*], [2 x %struct.TYPE_27__*]* %15, i64 0, i64 0
  %247 = getelementptr inbounds [2 x %struct.TYPE_27__*], [2 x %struct.TYPE_27__*]* %15, i64 0, i64 1
  %248 = call i32 @ClipWindingEpsilon(%struct.TYPE_27__* %239, i32 %242, float %245, i32 0, %struct.TYPE_27__** %246, %struct.TYPE_27__** %247)
  store i32 0, i32* %13, align 4
  br label %249

249:                                              ; preds = %297, %238
  %250 = load i32, i32* %13, align 4
  %251 = icmp slt i32 %250, 2
  br i1 %251, label %252, label %300

252:                                              ; preds = %249
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [2 x %struct.TYPE_27__*], [2 x %struct.TYPE_27__*]* %15, i64 0, i64 %254
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %255, align 8
  %257 = icmp ne %struct.TYPE_27__* %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %252
  br label %297

259:                                              ; preds = %252
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %261
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i32 0, i32 3
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %267
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i64 %272
  store %struct.TYPE_28__* %273, %struct.TYPE_28__** %20, align 8
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %275
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 8
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %283 = bitcast %struct.TYPE_28__* %281 to i8*
  %284 = bitcast %struct.TYPE_28__* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 %284, i64 32, i1 false)
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [2 x %struct.TYPE_27__*], [2 x %struct.TYPE_27__*]* %15, i64 0, i64 %286
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %287, align 8
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 2
  store %struct.TYPE_27__* %288, %struct.TYPE_27__** %290, align 8
  %291 = load i32, i32* @SFL_TESTED, align 4
  %292 = xor i32 %291, -1
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = and i32 %295, %292
  store i32 %296, i32* %294, align 8
  br label %297

297:                                              ; preds = %259, %258
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %13, align 4
  br label %249

300:                                              ; preds = %249
  br label %301

301:                                              ; preds = %300, %237
  %302 = load i32, i32* %12, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %12, align 4
  br label %219

304:                                              ; preds = %219
  store i32 0, i32* %12, align 4
  br label %305

305:                                              ; preds = %369, %304
  %306 = load i32, i32* %12, align 4
  %307 = icmp slt i32 %306, 2
  br i1 %307, label %308, label %372

308:                                              ; preds = %305
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %310
  %312 = load %struct.TYPE_30__*, %struct.TYPE_30__** %311, align 8
  %313 = call i32 @BoundBrush(%struct.TYPE_30__* %312)
  store i32 0, i32* %13, align 4
  br label %314

314:                                              ; preds = %344, %308
  %315 = load i32, i32* %13, align 4
  %316 = icmp slt i32 %315, 3
  br i1 %316, label %317, label %347

317:                                              ; preds = %314
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %319
  %321 = load %struct.TYPE_30__*, %struct.TYPE_30__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %13, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = icmp slt i32 %327, -4096
  br i1 %328, label %341, label %329

329:                                              ; preds = %317
  %330 = load i32, i32* %12, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %331
  %333 = load %struct.TYPE_30__*, %struct.TYPE_30__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %13, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = icmp sgt i32 %339, 4096
  br i1 %340, label %341, label %343

341:                                              ; preds = %329, %317
  %342 = call i32 @Log_Print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %347

343:                                              ; preds = %329
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %13, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %13, align 4
  br label %314

347:                                              ; preds = %341, %314
  %348 = load i32, i32* %12, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %349
  %351 = load %struct.TYPE_30__*, %struct.TYPE_30__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp slt i32 %353, 3
  br i1 %354, label %358, label %355

355:                                              ; preds = %347
  %356 = load i32, i32* %13, align 4
  %357 = icmp slt i32 %356, 3
  br i1 %357, label %358, label %368

358:                                              ; preds = %355, %347
  %359 = load i32, i32* %12, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %360
  %362 = load %struct.TYPE_30__*, %struct.TYPE_30__** %361, align 8
  %363 = call i32 @FreeBrush(%struct.TYPE_30__* %362)
  %364 = load i32, i32* %12, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %365
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %366, align 8
  %367 = call i32 @Log_Print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %368

368:                                              ; preds = %358, %355
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %12, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %12, align 4
  br label %305

372:                                              ; preds = %305
  %373 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 0
  %374 = load %struct.TYPE_30__*, %struct.TYPE_30__** %373, align 16
  %375 = icmp ne %struct.TYPE_30__* %374, null
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 1
  %378 = load %struct.TYPE_30__*, %struct.TYPE_30__** %377, align 8
  %379 = icmp ne %struct.TYPE_30__* %378, null
  br i1 %379, label %415, label %380

380:                                              ; preds = %376, %372
  %381 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 0
  %382 = load %struct.TYPE_30__*, %struct.TYPE_30__** %381, align 16
  %383 = icmp ne %struct.TYPE_30__* %382, null
  br i1 %383, label %390, label %384

384:                                              ; preds = %380
  %385 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 1
  %386 = load %struct.TYPE_30__*, %struct.TYPE_30__** %385, align 8
  %387 = icmp ne %struct.TYPE_30__* %386, null
  br i1 %387, label %390, label %388

388:                                              ; preds = %384
  %389 = call i32 @Log_Print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %392

390:                                              ; preds = %384, %380
  %391 = call i32 @Log_Print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %392

392:                                              ; preds = %390, %388
  %393 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 0
  %394 = load %struct.TYPE_30__*, %struct.TYPE_30__** %393, align 16
  %395 = icmp ne %struct.TYPE_30__* %394, null
  br i1 %395, label %396, label %403

396:                                              ; preds = %392
  %397 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 0
  %398 = load %struct.TYPE_30__*, %struct.TYPE_30__** %397, align 16
  %399 = call i32 @FreeBrush(%struct.TYPE_30__* %398)
  %400 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %401 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %400)
  %402 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %9, align 8
  store %struct.TYPE_30__* %401, %struct.TYPE_30__** %402, align 8
  br label %403

403:                                              ; preds = %396, %392
  %404 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 1
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %404, align 8
  %406 = icmp ne %struct.TYPE_30__* %405, null
  br i1 %406, label %407, label %414

407:                                              ; preds = %403
  %408 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 1
  %409 = load %struct.TYPE_30__*, %struct.TYPE_30__** %408, align 8
  %410 = call i32 @FreeBrush(%struct.TYPE_30__* %409)
  %411 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %412 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %411)
  %413 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %10, align 8
  store %struct.TYPE_30__* %412, %struct.TYPE_30__** %413, align 8
  br label %414

414:                                              ; preds = %407, %403
  br label %512

415:                                              ; preds = %376
  store i32 0, i32* %12, align 4
  br label %416

416:                                              ; preds = %476, %415
  %417 = load i32, i32* %12, align 4
  %418 = icmp slt i32 %417, 2
  br i1 %418, label %419, label %479

419:                                              ; preds = %416
  %420 = load i32, i32* %12, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %421
  %423 = load %struct.TYPE_30__*, %struct.TYPE_30__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %423, i32 0, i32 3
  %425 = load %struct.TYPE_28__*, %struct.TYPE_28__** %424, align 8
  %426 = load i32, i32* %12, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %427
  %429 = load %struct.TYPE_30__*, %struct.TYPE_30__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %425, i64 %432
  store %struct.TYPE_28__* %433, %struct.TYPE_28__** %20, align 8
  %434 = load i32, i32* %12, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %435
  %437 = load %struct.TYPE_30__*, %struct.TYPE_30__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %438, align 8
  %441 = load i32, i32* %7, align 4
  %442 = load i32, i32* %12, align 4
  %443 = xor i32 %441, %442
  %444 = xor i32 %443, 1
  %445 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %446 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %445, i32 0, i32 0
  store i32 %444, i32* %446, align 8
  %447 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %448 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %447, i32 0, i32 4
  store i64 0, i64* %448, align 8
  %449 = load i32, i32* %8, align 4
  %450 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %451 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %450, i32 0, i32 1
  store i32 %449, i32* %451, align 4
  %452 = load i32, i32* @SFL_VISIBLE, align 4
  %453 = xor i32 %452, -1
  %454 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %455 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 8
  %457 = and i32 %456, %453
  store i32 %457, i32* %455, align 8
  %458 = load i32, i32* @SFL_TESTED, align 4
  %459 = xor i32 %458, -1
  %460 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %461 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 8
  %463 = and i32 %462, %459
  store i32 %463, i32* %461, align 8
  %464 = load i32, i32* %12, align 4
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %471

466:                                              ; preds = %419
  %467 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %468 = call %struct.TYPE_27__* @CopyWinding(%struct.TYPE_27__* %467)
  %469 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %470 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %469, i32 0, i32 2
  store %struct.TYPE_27__* %468, %struct.TYPE_27__** %470, align 8
  br label %475

471:                                              ; preds = %419
  %472 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %473 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %474 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %473, i32 0, i32 2
  store %struct.TYPE_27__* %472, %struct.TYPE_27__** %474, align 8
  br label %475

475:                                              ; preds = %471, %466
  br label %476

476:                                              ; preds = %475
  %477 = load i32, i32* %12, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %12, align 4
  br label %416

479:                                              ; preds = %416
  store i32 0, i32* %26, align 4
  br label %480

480:                                              ; preds = %502, %479
  %481 = load i32, i32* %26, align 4
  %482 = icmp slt i32 %481, 2
  br i1 %482, label %483, label %505

483:                                              ; preds = %480
  %484 = load i32, i32* %26, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %485
  %487 = load %struct.TYPE_30__*, %struct.TYPE_30__** %486, align 8
  %488 = call i32 @BrushVolume(%struct.TYPE_30__* %487)
  store i32 %488, i32* %25, align 4
  %489 = load i32, i32* %25, align 4
  %490 = icmp slt i32 %489, 1
  br i1 %490, label %491, label %501

491:                                              ; preds = %483
  %492 = load i32, i32* %26, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %493
  %495 = load %struct.TYPE_30__*, %struct.TYPE_30__** %494, align 8
  %496 = call i32 @FreeBrush(%struct.TYPE_30__* %495)
  %497 = load i32, i32* %26, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 %498
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %499, align 8
  %500 = call i32 @Log_Print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %501

501:                                              ; preds = %491, %483
  br label %502

502:                                              ; preds = %501
  %503 = load i32, i32* %26, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %26, align 4
  br label %480

505:                                              ; preds = %480
  %506 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 0
  %507 = load %struct.TYPE_30__*, %struct.TYPE_30__** %506, align 16
  %508 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %9, align 8
  store %struct.TYPE_30__* %507, %struct.TYPE_30__** %508, align 8
  %509 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %11, i64 0, i64 1
  %510 = load %struct.TYPE_30__*, %struct.TYPE_30__** %509, align 8
  %511 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %10, align 8
  store %struct.TYPE_30__* %510, %struct.TYPE_30__** %511, align 8
  br label %512

512:                                              ; preds = %505, %414, %186, %112, %103
  ret void
}

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__*) #1

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local %struct.TYPE_27__* @BaseWindingForPlane(i32, float) #1

declare dso_local i32 @ChopWindingInPlace(%struct.TYPE_27__**, i32, float, i32) #1

declare dso_local i64 @WindingIsTiny(%struct.TYPE_27__*) #1

declare dso_local i32 @BrushMostlyOnSide(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i64 @WindingIsHuge(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_30__* @AllocBrush(i32) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_27__*, i32, float, i32, %struct.TYPE_27__**, %struct.TYPE_27__**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BoundBrush(%struct.TYPE_30__*) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_27__* @CopyWinding(%struct.TYPE_27__*) #1

declare dso_local i32 @BrushVolume(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
