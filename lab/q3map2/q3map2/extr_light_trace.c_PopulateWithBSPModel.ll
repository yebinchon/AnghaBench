; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_PopulateWithBSPModel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_PopulateWithBSPModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_29__ = type { i64, i32, %struct.TYPE_26__*, i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i64 }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_32__* }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32, i32 }

@bspDrawSurfaces = common dso_local global %struct.TYPE_33__* null, align 8
@surfaceInfos = common dso_local global %struct.TYPE_29__* null, align 8
@patchShadows = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@bspShaders = common dso_local global %struct.TYPE_24__* null, align 8
@noDrawContentFlags = common dso_local global i32 0, align 4
@noDrawSurfaceFlags = common dso_local global i32 0, align 4
@C_NODRAW = common dso_local global i32 0, align 4
@C_TRANSLUCENT = common dso_local global i32 0, align 4
@C_ALPHASHADOW = common dso_local global i32 0, align 4
@C_LIGHTFILTER = common dso_local global i32 0, align 4
@skyboxNodeNum = common dso_local global i32 0, align 4
@C_SKY = common dso_local global i32 0, align 4
@headNodeNum = common dso_local global i32 0, align 4
@bspDrawVerts = common dso_local global %struct.TYPE_32__* null, align 8
@bspDrawIndexes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, i32*)* @PopulateWithBSPModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PopulateWithBSPModel(%struct.TYPE_31__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_30__, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca %struct.TYPE_30__*, align 8
  %19 = alloca %struct.TYPE_28__, align 8
  %20 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store i32* %1, i32** %4, align 8
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %22 = icmp eq %struct.TYPE_31__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %2
  br label %675

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %672, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %675

34:                                               ; preds = %28
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** @bspDrawSurfaces, align 8
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i64 %41
  store %struct.TYPE_33__* %42, %struct.TYPE_33__** %12, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** @surfaceInfos, align 8
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i64 %49
  store %struct.TYPE_29__* %50, %struct.TYPE_29__** %13, align 8
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %52, align 8
  %54 = icmp eq %struct.TYPE_26__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  br label %672

56:                                               ; preds = %34
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %672

62:                                               ; preds = %56
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 130
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i64, i64* @patchShadows, align 8
  %69 = load i64, i64* @qfalse, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %672

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** @bspShaders, align 8
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @noDrawContentFlags, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %72
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** @bspShaders, align 8
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @noDrawSurfaceFlags, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83, %72
  br label %672

95:                                               ; preds = %83
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @C_NODRAW, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %672

105:                                              ; preds = %95
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @C_TRANSLUCENT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %105
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @C_ALPHASHADOW, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %114
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @C_LIGHTFILTER, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %672

133:                                              ; preds = %123, %114, %105
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 2
  store %struct.TYPE_26__* %136, %struct.TYPE_26__** %137, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 1
  store i64 %140, i64* %141, align 8
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  store i64 %147, i64* %148, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sge i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %133
  %154 = load i32, i32* @skyboxNodeNum, align 4
  store i32 %154, i32* %11, align 4
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @C_SKY, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  br label %672

164:                                              ; preds = %153
  br label %167

165:                                              ; preds = %133
  %166 = load i32, i32* @headNodeNum, align 4
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %165, %164
  %168 = call i32 @memset(%struct.TYPE_27__* %20, i32 0, i32 24)
  %169 = call i32 @AddTraceInfo(%struct.TYPE_28__* %19)
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 2
  store i32 %169, i32* %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  store i32 3, i32* %171, align 8
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %670 [
    i32 130, label %175
    i32 128, label %525
    i32 129, label %525
  ]

175:                                              ; preds = %167
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  store i32 %178, i32* %179, align 8
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 1
  store i32 %182, i32* %183, align 4
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** @bspDrawVerts, align 8
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 2
  store %struct.TYPE_32__* %188, %struct.TYPE_32__** %189, align 8
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = bitcast %struct.TYPE_30__* %16 to { i64, %struct.TYPE_32__* }*
  %194 = getelementptr inbounds { i64, %struct.TYPE_32__* }, { i64, %struct.TYPE_32__* }* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds { i64, %struct.TYPE_32__* }, { i64, %struct.TYPE_32__* }* %193, i32 0, i32 1
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %196, align 8
  %198 = call %struct.TYPE_30__* @SubdivideMesh2(i64 %195, %struct.TYPE_32__* %197, i32 %192)
  store %struct.TYPE_30__* %198, %struct.TYPE_30__** %18, align 8
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %200 = bitcast %struct.TYPE_30__* %199 to { i64, %struct.TYPE_32__* }*
  %201 = getelementptr inbounds { i64, %struct.TYPE_32__* }, { i64, %struct.TYPE_32__* }* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds { i64, %struct.TYPE_32__* }, { i64, %struct.TYPE_32__* }* %200, i32 0, i32 1
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %203, align 8
  %205 = call i32 @PutMeshOnCurve(i64 %202, %struct.TYPE_32__* %204)
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %207 = call %struct.TYPE_30__* @RemoveLinearMeshColumnsRows(%struct.TYPE_30__* %206)
  store %struct.TYPE_30__* %207, %struct.TYPE_30__** %17, align 8
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %209 = call i32 @FreeMesh(%struct.TYPE_30__* %208)
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %211, align 8
  store %struct.TYPE_32__* %212, %struct.TYPE_32__** %14, align 8
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %519, %175
  %214 = load i32, i32* %8, align 4
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, 1
  %219 = icmp slt i32 %214, %218
  br i1 %219, label %220, label %522

220:                                              ; preds = %213
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %515, %220
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  %227 = icmp slt i32 %222, %226
  br i1 %227, label %228, label %518

228:                                              ; preds = %221
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = mul nsw i32 %230, %233
  %235 = add nsw i32 %229, %234
  %236 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  store i32 %235, i32* %236, align 16
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = mul nsw i32 %239, %242
  %244 = add nsw i32 %237, %243
  %245 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  store i32 %244, i32* %245, align 4
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = mul nsw i32 %249, %252
  %254 = add nsw i32 %247, %253
  %255 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  store i32 %254, i32* %255, align 8
  %256 = load i32, i32* %7, align 4
  %257 = add nsw i32 %256, 1
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = mul nsw i32 %258, %261
  %263 = add nsw i32 %257, %262
  %264 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 3
  store i32 %263, i32* %264, align 4
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = mul nsw i32 %266, %269
  %271 = add nsw i32 %265, %270
  %272 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 4
  store i32 %271, i32* %272, align 16
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %8, align 4
  %275 = add nsw i32 %273, %274
  %276 = and i32 %275, 1
  store i32 %276, i32* %10, align 4
  %277 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %278 = load i32, i32* %10, align 4
  %279 = add nsw i32 %278, 0
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %277, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @VectorCopy(i32 %286, i32 %291)
  %293 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 0
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %293, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i64 0
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @Vector2Copy(i32 %302, i32 %307)
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i64 1
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @VectorCopy(i32 %318, i32 %323)
  %325 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %326 = load i32, i32* %10, align 4
  %327 = add nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %325, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i64 1
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @Vector2Copy(i32 %334, i32 %339)
  %341 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %342 = load i32, i32* %10, align 4
  %343 = add nsw i32 %342, 2
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %341, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i64 2
  %354 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @VectorCopy(i32 %350, i32 %355)
  %357 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %358 = load i32, i32* %10, align 4
  %359 = add nsw i32 %358, 2
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %357, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i64 2
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @Vector2Copy(i32 %366, i32 %371)
  %373 = load i32*, i32** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i64 0
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @m4x4_transform_point(i32* %373, i32 %378)
  %380 = load i32*, i32** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %382 = load %struct.TYPE_25__*, %struct.TYPE_25__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %382, i64 1
  %384 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @m4x4_transform_point(i32* %380, i32 %385)
  %387 = load i32*, i32** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i64 2
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @m4x4_transform_point(i32* %387, i32 %392)
  %394 = load i32, i32* %11, align 4
  %395 = call i32 @FilterTraceWindingIntoNodes_r(%struct.TYPE_27__* %20, i32 %394)
  %396 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %397 = load i32, i32* %10, align 4
  %398 = add nsw i32 %397, 0
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %396, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %407 = load %struct.TYPE_25__*, %struct.TYPE_25__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %407, i64 0
  %409 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @VectorCopy(i32 %405, i32 %410)
  %412 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %413 = load i32, i32* %10, align 4
  %414 = add nsw i32 %413, 0
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %412, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %423 = load %struct.TYPE_25__*, %struct.TYPE_25__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %423, i64 0
  %425 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @Vector2Copy(i32 %421, i32 %426)
  %428 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %429 = load i32, i32* %10, align 4
  %430 = add nsw i32 %429, 2
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %428, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %439 = load %struct.TYPE_25__*, %struct.TYPE_25__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %439, i64 1
  %441 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @VectorCopy(i32 %437, i32 %442)
  %444 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %445 = load i32, i32* %10, align 4
  %446 = add nsw i32 %445, 2
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %444, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %455 = load %struct.TYPE_25__*, %struct.TYPE_25__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %455, i64 1
  %457 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @Vector2Copy(i32 %453, i32 %458)
  %460 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %461 = load i32, i32* %10, align 4
  %462 = add nsw i32 %461, 3
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %460, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %471 = load %struct.TYPE_25__*, %struct.TYPE_25__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %471, i64 2
  %473 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @VectorCopy(i32 %469, i32 %474)
  %476 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %477 = load i32, i32* %10, align 4
  %478 = add nsw i32 %477, 3
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %476, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %487 = load %struct.TYPE_25__*, %struct.TYPE_25__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %487, i64 2
  %489 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @Vector2Copy(i32 %485, i32 %490)
  %492 = load i32*, i32** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %494, i64 0
  %496 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = call i32 @m4x4_transform_point(i32* %492, i32 %497)
  %499 = load i32*, i32** %4, align 8
  %500 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %501 = load %struct.TYPE_25__*, %struct.TYPE_25__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %501, i64 1
  %503 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @m4x4_transform_point(i32* %499, i32 %504)
  %506 = load i32*, i32** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %508 = load %struct.TYPE_25__*, %struct.TYPE_25__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %508, i64 2
  %510 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @m4x4_transform_point(i32* %506, i32 %511)
  %513 = load i32, i32* %11, align 4
  %514 = call i32 @FilterTraceWindingIntoNodes_r(%struct.TYPE_27__* %20, i32 %513)
  br label %515

515:                                              ; preds = %228
  %516 = load i32, i32* %7, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %7, align 4
  br label %221

518:                                              ; preds = %221
  br label %519

519:                                              ; preds = %518
  %520 = load i32, i32* %8, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %8, align 4
  br label %213

522:                                              ; preds = %213
  %523 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %524 = call i32 @FreeMesh(%struct.TYPE_30__* %523)
  br label %671

525:                                              ; preds = %167, %167
  %526 = load %struct.TYPE_32__*, %struct.TYPE_32__** @bspDrawVerts, align 8
  %527 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %528 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %527, i32 0, i32 3
  %529 = load i64, i64* %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %526, i64 %529
  store %struct.TYPE_32__* %530, %struct.TYPE_32__** %14, align 8
  %531 = load i32*, i32** @bspDrawIndexes, align 8
  %532 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %533 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %532, i32 0, i32 4
  %534 = load i64, i64* %533, align 8
  %535 = getelementptr inbounds i32, i32* %531, i64 %534
  store i32* %535, i32** %15, align 8
  store i32 0, i32* %6, align 4
  br label %536

536:                                              ; preds = %666, %525
  %537 = load i32, i32* %6, align 4
  %538 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %539 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %538, i32 0, i32 5
  %540 = load i32, i32* %539, align 8
  %541 = icmp slt i32 %537, %540
  br i1 %541, label %542, label %669

542:                                              ; preds = %536
  %543 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %544 = load i32*, i32** %15, align 8
  %545 = load i32, i32* %6, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %544, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %543, i64 %549
  %551 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %554 = load %struct.TYPE_25__*, %struct.TYPE_25__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %554, i64 0
  %556 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @VectorCopy(i32 %552, i32 %557)
  %559 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %560 = load i32*, i32** %15, align 8
  %561 = load i32, i32* %6, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %560, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %559, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %570 = load %struct.TYPE_25__*, %struct.TYPE_25__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %570, i64 0
  %572 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = call i32 @Vector2Copy(i32 %568, i32 %573)
  %575 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %576 = load i32*, i32** %15, align 8
  %577 = load i32, i32* %6, align 4
  %578 = add nsw i32 %577, 1
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %576, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %575, i64 %582
  %584 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %587 = load %struct.TYPE_25__*, %struct.TYPE_25__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %587, i64 1
  %589 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 4
  %591 = call i32 @VectorCopy(i32 %585, i32 %590)
  %592 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %593 = load i32*, i32** %15, align 8
  %594 = load i32, i32* %6, align 4
  %595 = add nsw i32 %594, 1
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %593, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %592, i64 %599
  %601 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 4
  %603 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %604 = load %struct.TYPE_25__*, %struct.TYPE_25__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %604, i64 1
  %606 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = call i32 @Vector2Copy(i32 %602, i32 %607)
  %609 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %610 = load i32*, i32** %15, align 8
  %611 = load i32, i32* %6, align 4
  %612 = add nsw i32 %611, 2
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i32, i32* %610, i64 %613
  %615 = load i32, i32* %614, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %609, i64 %616
  %618 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %617, i32 0, i32 1
  %619 = load i32, i32* %618, align 4
  %620 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %621 = load %struct.TYPE_25__*, %struct.TYPE_25__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %621, i64 2
  %623 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 4
  %625 = call i32 @VectorCopy(i32 %619, i32 %624)
  %626 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %627 = load i32*, i32** %15, align 8
  %628 = load i32, i32* %6, align 4
  %629 = add nsw i32 %628, 2
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i32, i32* %627, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %626, i64 %633
  %635 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 4
  %637 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %638 = load %struct.TYPE_25__*, %struct.TYPE_25__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %638, i64 2
  %640 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @Vector2Copy(i32 %636, i32 %641)
  %643 = load i32*, i32** %4, align 8
  %644 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %645 = load %struct.TYPE_25__*, %struct.TYPE_25__** %644, align 8
  %646 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %645, i64 0
  %647 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 4
  %649 = call i32 @m4x4_transform_point(i32* %643, i32 %648)
  %650 = load i32*, i32** %4, align 8
  %651 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %652 = load %struct.TYPE_25__*, %struct.TYPE_25__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %652, i64 1
  %654 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %653, i32 0, i32 0
  %655 = load i32, i32* %654, align 4
  %656 = call i32 @m4x4_transform_point(i32* %650, i32 %655)
  %657 = load i32*, i32** %4, align 8
  %658 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %659 = load %struct.TYPE_25__*, %struct.TYPE_25__** %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %659, i64 2
  %661 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 4
  %663 = call i32 @m4x4_transform_point(i32* %657, i32 %662)
  %664 = load i32, i32* %11, align 4
  %665 = call i32 @FilterTraceWindingIntoNodes_r(%struct.TYPE_27__* %20, i32 %664)
  br label %666

666:                                              ; preds = %542
  %667 = load i32, i32* %6, align 4
  %668 = add nsw i32 %667, 3
  store i32 %668, i32* %6, align 4
  br label %536

669:                                              ; preds = %536
  br label %671

670:                                              ; preds = %167
  br label %671

671:                                              ; preds = %670, %669, %522
  br label %672

672:                                              ; preds = %671, %163, %132, %104, %94, %71, %61, %55
  %673 = load i32, i32* %5, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %5, align 4
  br label %28

675:                                              ; preds = %26, %28
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @AddTraceInfo(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_30__* @SubdivideMesh2(i64, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @PutMeshOnCurve(i64, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_30__* @RemoveLinearMeshColumnsRows(%struct.TYPE_30__*) #1

declare dso_local i32 @FreeMesh(%struct.TYPE_30__*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @Vector2Copy(i32, i32) #1

declare dso_local i32 @m4x4_transform_point(i32*, i32) #1

declare dso_local i32 @FilterTraceWindingIntoNodes_r(%struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
