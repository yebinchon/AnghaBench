; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush.c_SplitBrush.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush.c_SplitBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { float, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_29__*, i32, i32* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__*, i32* }
%struct.TYPE_28__ = type { i32, i32* }

@mapplanes = common dso_local global %struct.TYPE_30__* null, align 8
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WARNING: huge winding\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"bogus brush after clip\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"split removed brush\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"split not on both sides\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SplitBrush(%struct.TYPE_31__* %0, i32 %1, %struct.TYPE_31__** %2, %struct.TYPE_31__** %3) #0 {
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__**, align 8
  %8 = alloca %struct.TYPE_31__**, align 8
  %9 = alloca [2 x %struct.TYPE_31__*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca [2 x %struct.TYPE_28__*], align 16
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_31__** %2, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__** %3, %struct.TYPE_31__*** %8, align 8
  %25 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %25, align 8
  %26 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %26, align 8
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** @mapplanes, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i64 %29
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %15, align 8
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %94, %4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %97

37:                                               ; preds = %31
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %44, align 8
  store %struct.TYPE_28__* %45, %struct.TYPE_28__** %12, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %47 = icmp ne %struct.TYPE_28__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %94

49:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %90, %49
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %50
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call float @DotProduct(i32 %63, i32 %66)
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 0
  %70 = load float, float* %69, align 4
  %71 = fsub float %67, %70
  store float %71, float* %19, align 4
  %72 = load float, float* %19, align 4
  %73 = fcmp ogt float %72, 0.000000e+00
  br i1 %73, label %74, label %80

74:                                               ; preds = %56
  %75 = load float, float* %19, align 4
  %76 = load float, float* %20, align 4
  %77 = fcmp ogt float %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load float, float* %19, align 4
  store float %79, float* %20, align 4
  br label %80

80:                                               ; preds = %78, %74, %56
  %81 = load float, float* %19, align 4
  %82 = fcmp olt float %81, 0.000000e+00
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load float, float* %19, align 4
  %85 = load float, float* %21, align 4
  %86 = fcmp olt float %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load float, float* %19, align 4
  store float %88, float* %21, align 4
  br label %89

89:                                               ; preds = %87, %83, %80
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %50

93:                                               ; preds = %50
  br label %94

94:                                               ; preds = %93, %48
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %31

97:                                               ; preds = %31
  %98 = load float, float* %20, align 4
  %99 = fpext float %98 to double
  %100 = fcmp olt double %99, 1.000000e-01
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %103 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %102)
  %104 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* %103, %struct.TYPE_31__** %104, align 8
  br label %479

105:                                              ; preds = %97
  %106 = load float, float* %21, align 4
  %107 = fpext float %106 to double
  %108 = fcmp ogt double %107, -1.000000e-01
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %111 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %110)
  %112 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %111, %struct.TYPE_31__** %112, align 8
  br label %479

113:                                              ; preds = %105
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load float, float* %118, align 4
  %120 = call %struct.TYPE_28__* @BaseWindingForPlane(i32 %116, float %119)
  store %struct.TYPE_28__* %120, %struct.TYPE_28__** %12, align 8
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %152, %113
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %129 = icmp ne %struct.TYPE_28__* %128, null
  br label %130

130:                                              ; preds = %127, %121
  %131 = phi i1 [ false, %121 ], [ %129, %127 ]
  br i1 %131, label %132, label %155

132:                                              ; preds = %130
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** @mapplanes, align 8
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = xor i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i64 %143
  store %struct.TYPE_30__* %144, %struct.TYPE_30__** %16, align 8
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load float, float* %149, align 4
  %151 = call i32 @ChopWindingInPlace(%struct.TYPE_28__** %12, i32 %147, float %150, i32 0)
  br label %152

152:                                              ; preds = %132
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %121

155:                                              ; preds = %130
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %157 = icmp ne %struct.TYPE_28__* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %160 = call i64 @WindingIsTiny(%struct.TYPE_28__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %158, %155
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %165 = call i32 @BrushMostlyOnSide(%struct.TYPE_31__* %163, %struct.TYPE_30__* %164)
  store i32 %165, i32* %22, align 4
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* @PSIDE_FRONT, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %171 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %170)
  %172 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %171, %struct.TYPE_31__** %172, align 8
  br label %173

173:                                              ; preds = %169, %162
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* @PSIDE_BACK, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %179 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %178)
  %180 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* %179, %struct.TYPE_31__** %180, align 8
  br label %181

181:                                              ; preds = %177, %173
  br label %479

182:                                              ; preds = %158
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %184 = call i64 @WindingIsHuge(%struct.TYPE_28__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, i32* @SYS_VRB, align 4
  %188 = call i32 @Sys_FPrintf(i32 %187, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %182
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_28__* %190, %struct.TYPE_28__** %14, align 8
  store i32 0, i32* %10, align 4
  br label %191

191:                                              ; preds = %227, %189
  %192 = load i32, i32* %10, align 4
  %193 = icmp slt i32 %192, 2
  br i1 %193, label %194, label %230

194:                                              ; preds = %191
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  %199 = call %struct.TYPE_31__* @AllocBrush(i32 %198)
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %201
  store %struct.TYPE_31__* %199, %struct.TYPE_31__** %202, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %204
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %205, align 8
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %208 = call i32 @memcpy(%struct.TYPE_31__* %206, %struct.TYPE_31__* %207, i32 32)
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %210
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 0
  store i32 0, i32* %213, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %215
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 3
  store i32* null, i32** %218, align 8
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %223
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %225, i32 0, i32 2
  store i32 %221, i32* %226, align 8
  br label %227

227:                                              ; preds = %194
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  br label %191

230:                                              ; preds = %191
  store i32 0, i32* %10, align 4
  br label %231

231:                                              ; preds = %307, %230
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %310

237:                                              ; preds = %231
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i64 %242
  store %struct.TYPE_29__* %243, %struct.TYPE_29__** %17, align 8
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %245, align 8
  store %struct.TYPE_28__* %246, %struct.TYPE_28__** %12, align 8
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %248 = icmp ne %struct.TYPE_28__* %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %237
  br label %307

250:                                              ; preds = %237
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 0
  %257 = load float, float* %256, align 4
  %258 = getelementptr inbounds [2 x %struct.TYPE_28__*], [2 x %struct.TYPE_28__*]* %13, i64 0, i64 0
  %259 = getelementptr inbounds [2 x %struct.TYPE_28__*], [2 x %struct.TYPE_28__*]* %13, i64 0, i64 1
  %260 = call i32 @ClipWindingEpsilon(%struct.TYPE_28__* %251, i32 %254, float %257, i32 0, %struct.TYPE_28__** %258, %struct.TYPE_28__** %259)
  store i32 0, i32* %11, align 4
  br label %261

261:                                              ; preds = %303, %250
  %262 = load i32, i32* %11, align 4
  %263 = icmp slt i32 %262, 2
  br i1 %263, label %264, label %306

264:                                              ; preds = %261
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [2 x %struct.TYPE_28__*], [2 x %struct.TYPE_28__*]* %13, i64 0, i64 %266
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %267, align 8
  %269 = icmp ne %struct.TYPE_28__* %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %264
  br label %303

271:                                              ; preds = %264
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %273
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %276, align 8
  %278 = load i32, i32* %11, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %279
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i64 %284
  store %struct.TYPE_29__* %285, %struct.TYPE_29__** %18, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %287
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 8
  %293 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %295 = bitcast %struct.TYPE_29__* %293 to i8*
  %296 = bitcast %struct.TYPE_29__* %294 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %295, i8* align 8 %296, i64 24, i1 false)
  %297 = load i32, i32* %11, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [2 x %struct.TYPE_28__*], [2 x %struct.TYPE_28__*]* %13, i64 0, i64 %298
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %299, align 8
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %301, i32 0, i32 1
  store %struct.TYPE_28__* %300, %struct.TYPE_28__** %302, align 8
  br label %303

303:                                              ; preds = %271, %270
  %304 = load i32, i32* %11, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %11, align 4
  br label %261

306:                                              ; preds = %261
  br label %307

307:                                              ; preds = %306, %249
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %10, align 4
  br label %231

310:                                              ; preds = %231
  store i32 0, i32* %10, align 4
  br label %311

311:                                              ; preds = %350, %310
  %312 = load i32, i32* %10, align 4
  %313 = icmp slt i32 %312, 2
  br i1 %313, label %314, label %353

314:                                              ; preds = %311
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %316
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp slt i32 %320, 3
  br i1 %321, label %329, label %322

322:                                              ; preds = %314
  %323 = load i32, i32* %10, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %324
  %326 = load %struct.TYPE_31__*, %struct.TYPE_31__** %325, align 8
  %327 = call i32 @BoundBrush(%struct.TYPE_31__* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %349, label %329

329:                                              ; preds = %322, %314
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %331
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp sge i32 %335, 3
  br i1 %336, label %337, label %340

337:                                              ; preds = %329
  %338 = load i32, i32* @SYS_VRB, align 4
  %339 = call i32 @Sys_FPrintf(i32 %338, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %340

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %10, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %342
  %344 = load %struct.TYPE_31__*, %struct.TYPE_31__** %343, align 8
  %345 = call i32 @FreeBrush(%struct.TYPE_31__* %344)
  %346 = load i32, i32* %10, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %347
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %348, align 8
  br label %349

349:                                              ; preds = %340, %322
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %10, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %10, align 4
  br label %311

353:                                              ; preds = %311
  %354 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %355 = load %struct.TYPE_31__*, %struct.TYPE_31__** %354, align 16
  %356 = icmp ne %struct.TYPE_31__* %355, null
  br i1 %356, label %357, label %361

357:                                              ; preds = %353
  %358 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %359 = load %struct.TYPE_31__*, %struct.TYPE_31__** %358, align 8
  %360 = icmp ne %struct.TYPE_31__* %359, null
  br i1 %360, label %398, label %361

361:                                              ; preds = %357, %353
  %362 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %363 = load %struct.TYPE_31__*, %struct.TYPE_31__** %362, align 16
  %364 = icmp ne %struct.TYPE_31__* %363, null
  br i1 %364, label %372, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %367 = load %struct.TYPE_31__*, %struct.TYPE_31__** %366, align 8
  %368 = icmp ne %struct.TYPE_31__* %367, null
  br i1 %368, label %372, label %369

369:                                              ; preds = %365
  %370 = load i32, i32* @SYS_VRB, align 4
  %371 = call i32 @Sys_FPrintf(i32 %370, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %375

372:                                              ; preds = %365, %361
  %373 = load i32, i32* @SYS_VRB, align 4
  %374 = call i32 @Sys_FPrintf(i32 %373, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %375

375:                                              ; preds = %372, %369
  %376 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %377 = load %struct.TYPE_31__*, %struct.TYPE_31__** %376, align 16
  %378 = icmp ne %struct.TYPE_31__* %377, null
  br i1 %378, label %379, label %386

379:                                              ; preds = %375
  %380 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %381 = load %struct.TYPE_31__*, %struct.TYPE_31__** %380, align 16
  %382 = call i32 @FreeBrush(%struct.TYPE_31__* %381)
  %383 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %384 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %383)
  %385 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %384, %struct.TYPE_31__** %385, align 8
  br label %386

386:                                              ; preds = %379, %375
  %387 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %388 = load %struct.TYPE_31__*, %struct.TYPE_31__** %387, align 8
  %389 = icmp ne %struct.TYPE_31__* %388, null
  br i1 %389, label %390, label %397

390:                                              ; preds = %386
  %391 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %392 = load %struct.TYPE_31__*, %struct.TYPE_31__** %391, align 8
  %393 = call i32 @FreeBrush(%struct.TYPE_31__* %392)
  %394 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %395 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %394)
  %396 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* %395, %struct.TYPE_31__** %396, align 8
  br label %397

397:                                              ; preds = %390, %386
  br label %479

398:                                              ; preds = %357
  store i32 0, i32* %10, align 4
  br label %399

399:                                              ; preds = %444, %398
  %400 = load i32, i32* %10, align 4
  %401 = icmp slt i32 %400, 2
  br i1 %401, label %402, label %447

402:                                              ; preds = %399
  %403 = load i32, i32* %10, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %404
  %406 = load %struct.TYPE_31__*, %struct.TYPE_31__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %406, i32 0, i32 1
  %408 = load %struct.TYPE_29__*, %struct.TYPE_29__** %407, align 8
  %409 = load i32, i32* %10, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %410
  %412 = load %struct.TYPE_31__*, %struct.TYPE_31__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %408, i64 %415
  store %struct.TYPE_29__* %416, %struct.TYPE_29__** %18, align 8
  %417 = load i32, i32* %10, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %418
  %420 = load %struct.TYPE_31__*, %struct.TYPE_31__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %421, align 8
  %424 = load i32, i32* %6, align 4
  %425 = load i32, i32* %10, align 4
  %426 = xor i32 %424, %425
  %427 = xor i32 %426, 1
  %428 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %429 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %428, i32 0, i32 0
  store i32 %427, i32* %429, align 8
  %430 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %431 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %430, i32 0, i32 2
  store i32* null, i32** %431, align 8
  %432 = load i32, i32* %10, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %402
  %435 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %436 = call %struct.TYPE_28__* @CopyWinding(%struct.TYPE_28__* %435)
  %437 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %438 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %437, i32 0, i32 1
  store %struct.TYPE_28__* %436, %struct.TYPE_28__** %438, align 8
  br label %443

439:                                              ; preds = %402
  %440 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %441 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %442 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %441, i32 0, i32 1
  store %struct.TYPE_28__* %440, %struct.TYPE_28__** %442, align 8
  br label %443

443:                                              ; preds = %439, %434
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %10, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %10, align 4
  br label %399

447:                                              ; preds = %399
  store i32 0, i32* %24, align 4
  br label %448

448:                                              ; preds = %469, %447
  %449 = load i32, i32* %24, align 4
  %450 = icmp slt i32 %449, 2
  br i1 %450, label %451, label %472

451:                                              ; preds = %448
  %452 = load i32, i32* %24, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %453
  %455 = load %struct.TYPE_31__*, %struct.TYPE_31__** %454, align 8
  %456 = call double @BrushVolume(%struct.TYPE_31__* %455)
  store double %456, double* %23, align 8
  %457 = load double, double* %23, align 8
  %458 = fcmp olt double %457, 1.000000e+00
  br i1 %458, label %459, label %468

459:                                              ; preds = %451
  %460 = load i32, i32* %24, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %461
  %463 = load %struct.TYPE_31__*, %struct.TYPE_31__** %462, align 8
  %464 = call i32 @FreeBrush(%struct.TYPE_31__* %463)
  %465 = load i32, i32* %24, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %466
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %467, align 8
  br label %468

468:                                              ; preds = %459, %451
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %24, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %24, align 4
  br label %448

472:                                              ; preds = %448
  %473 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %474 = load %struct.TYPE_31__*, %struct.TYPE_31__** %473, align 16
  %475 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %474, %struct.TYPE_31__** %475, align 8
  %476 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %477 = load %struct.TYPE_31__*, %struct.TYPE_31__** %476, align 8
  %478 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* %477, %struct.TYPE_31__** %478, align 8
  br label %479

479:                                              ; preds = %472, %397, %181, %109, %101
  ret void
}

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_28__* @BaseWindingForPlane(i32, float) #1

declare dso_local i32 @ChopWindingInPlace(%struct.TYPE_28__**, i32, float, i32) #1

declare dso_local i64 @WindingIsTiny(%struct.TYPE_28__*) #1

declare dso_local i32 @BrushMostlyOnSide(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i64 @WindingIsHuge(%struct.TYPE_28__*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local %struct.TYPE_31__* @AllocBrush(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_28__*, i32, float, i32, %struct.TYPE_28__**, %struct.TYPE_28__**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BoundBrush(%struct.TYPE_31__*) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_28__* @CopyWinding(%struct.TYPE_28__*) #1

declare dso_local double @BrushVolume(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
