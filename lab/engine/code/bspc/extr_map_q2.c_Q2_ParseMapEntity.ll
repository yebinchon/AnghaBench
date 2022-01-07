; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_Q2_ParseMapEntity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_Q2_ParseMapEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i64*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_20__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ParseEntity: { not found\00", align 1
@num_entities = common dso_local global i64 0, align 8
@MAX_MAP_ENTITIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"num_entities == MAX_MAP_ENTITIES\00", align 1
@entities = common dso_local global %struct.TYPE_24__* null, align 8
@nummapbrushes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"ParseEntity: EOF without closing brace\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@mapbrushes = common dso_local global %struct.TYPE_22__* null, align 8
@mapplanes = common dso_local global %struct.TYPE_25__* null, align 8
@side_brushtextures = common dso_local global i32* null, align 8
@brushsides = common dso_local global %struct.TYPE_21__* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"func_group\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"func_areaportal\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Entity %i: func_areaportal can only be a single brush\00", align 1
@CONTENTS_AREAPORTAL = common dso_local global i32 0, align 4
@c_areaportals = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"style\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Q2_ParseMapEntity(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca [128 x i8], align 16
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @PS_ReadToken(i32* %13, %struct.TYPE_20__* %11)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %240

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i64, i64* @num_entities, align 8
  %26 = load i64, i64* @MAX_MAP_ENTITIES, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** @entities, align 8
  %32 = load i64, i64* @num_entities, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i64 %32
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %4, align 8
  %34 = load i64, i64* @num_entities, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* @num_entities, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %37 = call i32 @memset(%struct.TYPE_24__* %36, i32 0, i32 32)
  %38 = load i32, i32* @nummapbrushes, align 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %78, %30
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @PS_ReadToken(i32* %44, %struct.TYPE_20__* %11)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %79

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %63 = call i32 @Q2_ParseBrush(i32* %61, %struct.TYPE_24__* %62)
  br label %77

64:                                               ; preds = %55
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @PS_UnreadLastToken(i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call %struct.TYPE_23__* @ParseEpair(i32* %67)
  store %struct.TYPE_23__* %68, %struct.TYPE_23__** %5, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %70, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  store %struct.TYPE_23__* %71, %struct.TYPE_23__** %73, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 4
  store %struct.TYPE_23__* %74, %struct.TYPE_23__** %76, align 8
  br label %77

77:                                               ; preds = %64, %60
  br label %78

78:                                               ; preds = %77
  br i1 true, label %43, label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @GetVectorForKey(%struct.TYPE_24__* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64* %83)
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %79
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 3
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %193

105:                                              ; preds = %98, %91, %79
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %189, %105
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %192

112:                                              ; preds = %106
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapbrushes, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i64 %119
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %10, align 8
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %183, %112
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %186

127:                                              ; preds = %121
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i64 %132
  store %struct.TYPE_21__* %133, %struct.TYPE_21__** %6, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 3
  %150 = load i64*, i64** %149, align 8
  %151 = call i64 @DotProduct(i32 %147, i64* %150)
  %152 = sub nsw i64 %140, %151
  store i64 %152, i64* %9, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = call i64 @FindFloatPlane(i32 %159, i64 %160)
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i64 %167
  %169 = load i32*, i32** @side_brushtextures, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** @brushsides, align 8
  %172 = ptrtoint %struct.TYPE_21__* %170 to i64
  %173 = ptrtoint %struct.TYPE_21__* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 16
  %176 = getelementptr inbounds i32, i32* %169, i64 %175
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 3
  %179 = load i64*, i64** %178, align 8
  %180 = call i32 @TexinfoForBrushTexture(%struct.TYPE_25__* %168, i32* %176, i64* %179)
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %127
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %121

186:                                              ; preds = %121
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %188 = call i32 @MakeBrushWindings(%struct.TYPE_22__* %187)
  br label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %106

192:                                              ; preds = %106
  br label %193

193:                                              ; preds = %192, %98
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %195 = call i8* @ValueForKey(%struct.TYPE_24__* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %196 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %200 = call i32 @Q2_MoveBrushesToWorld(%struct.TYPE_24__* %199)
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  store i32 0, i32* %202, align 4
  store i32 1, i32* %2, align 4
  br label %240

203:                                              ; preds = %193
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %205 = call i8* @ValueForKey(%struct.TYPE_24__* %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %206 = call i64 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %239, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 1
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i64, i64* @num_entities, align 8
  %215 = sub i64 %214, 1
  %216 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i64 %215)
  br label %217

217:                                              ; preds = %213, %208
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapbrushes, align 8
  %219 = load i32, i32* @nummapbrushes, align 4
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i64 %221
  store %struct.TYPE_22__* %222, %struct.TYPE_22__** %10, align 8
  %223 = load i32, i32* @CONTENTS_AREAPORTAL, align 4
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @c_areaportals, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* @c_areaportals, align 4
  %228 = load i32, i32* @c_areaportals, align 4
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %232 = load i32, i32* @c_areaportals, align 4
  %233 = call i32 @sprintf(i8* %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %235 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %236 = call i32 @SetKeyValue(%struct.TYPE_24__* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %235)
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %238 = call i32 @Q2_MoveBrushesToWorld(%struct.TYPE_24__* %237)
  store i32 1, i32* %2, align 4
  br label %240

239:                                              ; preds = %203
  store i32 1, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %217, %198, %16
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i32 @PS_ReadToken(i32*, %struct.TYPE_20__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @Q2_ParseBrush(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @PS_UnreadLastToken(i32*) #1

declare dso_local %struct.TYPE_23__* @ParseEpair(i32*) #1

declare dso_local i32 @GetVectorForKey(%struct.TYPE_24__*, i8*, i64*) #1

declare dso_local i64 @DotProduct(i32, i64*) #1

declare dso_local i64 @FindFloatPlane(i32, i64) #1

declare dso_local i32 @TexinfoForBrushTexture(%struct.TYPE_25__*, i32*, i64*) #1

declare dso_local i32 @MakeBrushWindings(%struct.TYPE_22__*) #1

declare dso_local i8* @ValueForKey(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @Q2_MoveBrushesToWorld(%struct.TYPE_24__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @SetKeyValue(%struct.TYPE_24__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
