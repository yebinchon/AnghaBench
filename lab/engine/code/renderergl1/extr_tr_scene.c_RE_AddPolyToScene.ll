; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_scene.c_RE_AddPolyToScene.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_scene.c_RE_AddPolyToScene.c"
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
@ri = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"WARNING: RE_AddPolyToScene: NULL poly shader\0A\00", align 1
@r_numpolyverts = common dso_local global i32 0, align 4
@max_polyverts = common dso_local global i32 0, align 4
@r_numpolys = common dso_local global i64 0, align 8
@max_polys = common dso_local global i64 0, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"WARNING: RE_AddPolyToScene: r_max_polys or r_max_polyverts reached\0A\00", align 1
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
  br label %278

18:                                               ; preds = %4
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %23 = load i32, i32* @PRINT_WARNING, align 4
  %24 = call i32 %22(i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %278

25:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %275, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %278

30:                                               ; preds = %26
  %31 = load i32, i32* @r_numpolyverts, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @max_polyverts, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @r_numpolys, align 8
  %38 = load i64, i64* @max_polys, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %30
  %41 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %42 = load i32, i32* @PRINT_DEVELOPER, align 4
  %43 = call i32 %41(i32 %42, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %278

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** @backEndData, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i64, i64* @r_numpolys, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %48
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %9, align 8
  %50 = load i32, i32* @SF_POLY, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** @backEndData, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = load i32, i32* @r_numpolyverts, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i64 %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @Com_Memcpy(%struct.TYPE_16__* %69, i32* %75, i32 %79)
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 8
  %82 = load i64, i64* @GLHW_RAGEPRO, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %44
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 255, i32* %90, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 255, i32* %96, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 255, i32* %102, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32 255, i32* %108, align 4
  br label %109

109:                                              ; preds = %84, %44
  %110 = load i64, i64* @r_numpolys, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* @r_numpolys, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @r_numpolyverts, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* @r_numpolyverts, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %116 = icmp eq %struct.TYPE_9__* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 0, i32* %12, align 4
  br label %271

118:                                              ; preds = %109
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 0, i32* %12, align 4
  br label %270

124:                                              ; preds = %118
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %132 = load i64*, i64** %131, align 16
  %133 = call i32 @VectorCopy(i32 %130, i64* %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %141 = load i64*, i64** %140, align 8
  %142 = call i32 @VectorCopy(i32 %139, i64* %141)
  store i32 1, i32* %10, align 4
  br label %143

143:                                              ; preds = %163, %124
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %143
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %159 = load i64*, i64** %158, align 16
  %160 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %161 = load i64*, i64** %160, align 8
  %162 = call i32 @AddPointToBounds(i32 %157, i64* %159, i64* %161)
  br label %163

163:                                              ; preds = %149
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %143

166:                                              ; preds = %143
  store i32 1, i32* %12, align 4
  br label %167

167:                                              ; preds = %259, %166
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %262

173:                                              ; preds = %167
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i64 %178
  store %struct.TYPE_11__* %179, %struct.TYPE_11__** %13, align 8
  %180 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i64**, i64*** %185, align 8
  %187 = getelementptr inbounds i64*, i64** %186, i64 0
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp sge i64 %183, %190
  br i1 %191, label %192, label %258

192:                                              ; preds = %173
  %193 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i64**, i64*** %198, align 8
  %200 = getelementptr inbounds i64*, i64** %199, i64 0
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp sge i64 %196, %203
  br i1 %204, label %205, label %258

205:                                              ; preds = %192
  %206 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 2
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i64**, i64*** %211, align 8
  %213 = getelementptr inbounds i64*, i64** %212, i64 0
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp sge i64 %209, %216
  br i1 %217, label %218, label %258

218:                                              ; preds = %205
  %219 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %220 = load i64*, i64** %219, align 16
  %221 = getelementptr inbounds i64, i64* %220, i64 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i64**, i64*** %224, align 8
  %226 = getelementptr inbounds i64*, i64** %225, i64 1
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp sle i64 %222, %229
  br i1 %230, label %231, label %258

231:                                              ; preds = %218
  %232 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %233 = load i64*, i64** %232, align 16
  %234 = getelementptr inbounds i64, i64* %233, i64 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i64**, i64*** %237, align 8
  %239 = getelementptr inbounds i64*, i64** %238, i64 1
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp sle i64 %235, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %231
  %245 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %246 = load i64*, i64** %245, align 16
  %247 = getelementptr inbounds i64, i64* %246, i64 2
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i64**, i64*** %250, align 8
  %252 = getelementptr inbounds i64*, i64** %251, i64 1
  %253 = load i64*, i64** %252, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp sle i64 %248, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %244
  br label %262

258:                                              ; preds = %244, %231, %218, %205, %192, %173
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %12, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %12, align 4
  br label %167

262:                                              ; preds = %257, %167
  %263 = load i32, i32* %12, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %263, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %262
  store i32 0, i32* %12, align 4
  br label %269

269:                                              ; preds = %268, %262
  br label %270

270:                                              ; preds = %269, %123
  br label %271

271:                                              ; preds = %270, %117
  %272 = load i32, i32* %12, align 4
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %271
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %11, align 4
  br label %26

278:                                              ; preds = %17, %21, %40, %26
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
