; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_scene.c_RE_AddPolyToScene.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_scene.c_RE_AddPolyToScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64** }
%struct.TYPE_13__ = type { i32 (i32, i8*)* }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_16__*, i64, i32 }
%struct.TYPE_14__ = type { i64 }

@tr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@r_numpolyverts = common dso_local global i32 0, align 4
@max_polyverts = common dso_local global i32 0, align 4
@r_numpolys = common dso_local global i64 0, align 8
@max_polys = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"WARNING: RE_AddPolyToScene: r_max_polys or r_max_polyverts reached\0A\00", align 1
@backEndData = common dso_local global %struct.TYPE_15__* null, align 8
@SF_POLY = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GLHW_RAGEPRO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_AddPolyToScene(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca [2 x i64*], align 16
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %275

18:                                               ; preds = %4
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %18
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %272, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %275

27:                                               ; preds = %23
  %28 = load i32, i32* @r_numpolyverts, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @max_polyverts, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* @r_numpolys, align 8
  %35 = load i64, i64* @max_polys, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %27
  %38 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %39 = load i32, i32* @PRINT_DEVELOPER, align 4
  %40 = call i32 %38(i32 %39, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %275

41:                                               ; preds = %33
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** @backEndData, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i64, i64* @r_numpolys, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %45
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %9, align 8
  %47 = load i32, i32* @SF_POLY, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** @backEndData, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = load i32, i32* @r_numpolyverts, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i64 %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @Com_Memcpy(%struct.TYPE_16__* %66, i32* %72, i32 %76)
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 8
  %79 = load i64, i64* @GLHW_RAGEPRO, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %41
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 255, i32* %87, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 255, i32* %93, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 255, i32* %99, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32 255, i32* %105, align 4
  br label %106

106:                                              ; preds = %81, %41
  %107 = load i64, i64* @r_numpolys, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* @r_numpolys, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @r_numpolyverts, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* @r_numpolyverts, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %113 = icmp eq %struct.TYPE_9__* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 0, i32* %12, align 4
  br label %268

115:                                              ; preds = %106
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %12, align 4
  br label %267

121:                                              ; preds = %115
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %129 = load i64*, i64** %128, align 16
  %130 = call i32 @VectorCopy(i32 %127, i64* %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %138 = load i64*, i64** %137, align 8
  %139 = call i32 @VectorCopy(i32 %136, i64* %138)
  store i32 1, i32* %10, align 4
  br label %140

140:                                              ; preds = %160, %121
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %156 = load i64*, i64** %155, align 16
  %157 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %158 = load i64*, i64** %157, align 8
  %159 = call i32 @AddPointToBounds(i32 %154, i64* %156, i64* %158)
  br label %160

160:                                              ; preds = %146
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %140

163:                                              ; preds = %140
  store i32 1, i32* %12, align 4
  br label %164

164:                                              ; preds = %256, %163
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %259

170:                                              ; preds = %164
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i64 %175
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %13, align 8
  %177 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i64**, i64*** %182, align 8
  %184 = getelementptr inbounds i64*, i64** %183, i64 0
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sge i64 %180, %187
  br i1 %188, label %189, label %255

189:                                              ; preds = %170
  %190 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i64**, i64*** %195, align 8
  %197 = getelementptr inbounds i64*, i64** %196, i64 0
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp sge i64 %193, %200
  br i1 %201, label %202, label %255

202:                                              ; preds = %189
  %203 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 2
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i64**, i64*** %208, align 8
  %210 = getelementptr inbounds i64*, i64** %209, i64 0
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp sge i64 %206, %213
  br i1 %214, label %215, label %255

215:                                              ; preds = %202
  %216 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %217 = load i64*, i64** %216, align 16
  %218 = getelementptr inbounds i64, i64* %217, i64 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i64**, i64*** %221, align 8
  %223 = getelementptr inbounds i64*, i64** %222, i64 1
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp sle i64 %219, %226
  br i1 %227, label %228, label %255

228:                                              ; preds = %215
  %229 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %230 = load i64*, i64** %229, align 16
  %231 = getelementptr inbounds i64, i64* %230, i64 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i64**, i64*** %234, align 8
  %236 = getelementptr inbounds i64*, i64** %235, i64 1
  %237 = load i64*, i64** %236, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp sle i64 %232, %239
  br i1 %240, label %241, label %255

241:                                              ; preds = %228
  %242 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %243 = load i64*, i64** %242, align 16
  %244 = getelementptr inbounds i64, i64* %243, i64 2
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i64**, i64*** %247, align 8
  %249 = getelementptr inbounds i64*, i64** %248, i64 1
  %250 = load i64*, i64** %249, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 2
  %252 = load i64, i64* %251, align 8
  %253 = icmp sle i64 %245, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %241
  br label %259

255:                                              ; preds = %241, %228, %215, %202, %189, %170
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  br label %164

259:                                              ; preds = %254, %164
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %260, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  store i32 0, i32* %12, align 4
  br label %266

266:                                              ; preds = %265, %259
  br label %267

267:                                              ; preds = %266, %120
  br label %268

268:                                              ; preds = %267, %114
  %269 = load i32, i32* %12, align 4
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %268
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %11, align 4
  br label %23

275:                                              ; preds = %17, %37, %23
  ret void
}

declare dso_local i32 @Com_Memcpy(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @VectorCopy(i32, i64*) #1

declare dso_local i32 @AddPointToBounds(i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
