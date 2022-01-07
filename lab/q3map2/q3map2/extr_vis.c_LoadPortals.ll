; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_LoadPortals.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_LoadPortals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_16__*, %struct.TYPE_14__** }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, double** }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"LoadPortals: couldn't read %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%79s\0A%i\0A%i\0A%i\0A\00", align 1
@portalclusters = common dso_local global i32 0, align 4
@numportals = common dso_local global i32 0, align 4
@numfaces = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"LoadPortals: failed to read header\00", align 1
@PORTALFILE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"LoadPortals: not a portal file\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%6i portalclusters\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%6i numportals\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%6i numfaces\0A\00", align 1
@leafbytes = common dso_local global i32 0, align 4
@leaflongs = common dso_local global i32 0, align 4
@portalbytes = common dso_local global i32 0, align 4
@portallongs = common dso_local global i32 0, align 4
@portals = common dso_local global %struct.TYPE_14__* null, align 8
@leafs = common dso_local global %struct.TYPE_14__* null, align 8
@VIS_HEADER_SIZE = common dso_local global i64 0, align 8
@numBSPVisBytes = common dso_local global i64 0, align 8
@MAX_MAP_VISIBILITY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"MAX_MAP_VISIBILITY exceeded\00", align 1
@bspVisBytes = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"%i %i %i \00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"LoadPortals: reading portal %i\00", align 1
@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"LoadPortals: portal %i has too many points\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"LoadPortals: reading hint state\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"(%lf %lf %lf ) \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_PORTALS_ON_LEAF = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [27 x i8] c"Leaf with too many portals\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@faces = common dso_local global %struct.TYPE_14__* null, align 8
@faceleafs = common dso_local global %struct.TYPE_14__* null, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"%i %i \00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Leaf with too many faces\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadPortals(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca [80 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca [3 x double], align 16
  %15 = alloca i32, align 4
  %16 = alloca [3 x double], align 16
  %17 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32*, i32** @stdin, align 8
  store i32* %22, i32** %9, align 8
  br label %32

23:                                               ; preds = %1
  %24 = load i8*, i8** %2, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %35 = call i32 (i32*, i8*, ...) @fscanf(i32* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %34, i32* @portalclusters, i32* @numportals, i32* @numfaces)
  %36 = icmp ne i32 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %41 = load i8*, i8** @PORTALFILE, align 8
  %42 = call i64 @strcmp(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* @portalclusters, align 4
  %48 = call i32 @Sys_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @numportals, align 4
  %50 = call i32 @Sys_Printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @numfaces, align 4
  %52 = call i32 @Sys_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @portalclusters, align 4
  %54 = add nsw i32 %53, 63
  %55 = and i32 %54, -64
  %56 = ashr i32 %55, 3
  store i32 %56, i32* @leafbytes, align 4
  %57 = load i32, i32* @leafbytes, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @leaflongs, align 4
  %61 = load i32, i32* @numportals, align 4
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %62, 63
  %64 = and i32 %63, -64
  %65 = ashr i32 %64, 3
  store i32 %65, i32* @portalbytes, align 4
  %66 = load i32, i32* @portalbytes, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %67, 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* @portallongs, align 4
  %70 = load i32, i32* @numportals, align 4
  %71 = mul nsw i32 2, %70
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 56
  %74 = trunc i64 %73 to i32
  %75 = call %struct.TYPE_14__* @safe_malloc(i32 %74)
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** @portals, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** @portals, align 8
  %77 = load i32, i32* @numportals, align 4
  %78 = mul nsw i32 2, %77
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 56
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(%struct.TYPE_14__* %76, i32 0, i32 %81)
  %83 = load i32, i32* @portalclusters, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 56
  %86 = trunc i64 %85 to i32
  %87 = call %struct.TYPE_14__* @safe_malloc(i32 %86)
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** @leafs, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leafs, align 8
  %89 = load i32, i32* @portalclusters, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 56
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memset(%struct.TYPE_14__* %88, i32 0, i32 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %104, %46
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @portalclusters, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leafs, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %94

107:                                              ; preds = %94
  %108 = load i64, i64* @VIS_HEADER_SIZE, align 8
  %109 = load i32, i32* @portalclusters, align 4
  %110 = load i32, i32* @leafbytes, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %108, %112
  store i64 %113, i64* @numBSPVisBytes, align 8
  %114 = load i64, i64* @numBSPVisBytes, align 8
  %115 = load i64, i64* @MAX_MAP_VISIBILITY, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %107
  %120 = load i32, i32* @portalclusters, align 4
  %121 = load i64, i64* @bspVisBytes, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @leafbytes, align 4
  %125 = load i64, i64* @bspVisBytes, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 %124, i32* %127, align 4
  store i32 0, i32* %3, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** @portals, align 8
  store %struct.TYPE_14__* %128, %struct.TYPE_14__** %6, align 8
  br label %129

129:                                              ; preds = %370, %119
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @numportals, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %373

133:                                              ; preds = %129
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %137 = call i32 (i32*, i8*, ...) @fscanf(i32* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* %10, i32* %135, i32* %136)
  %138 = icmp ne i32 %137, 3
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* %3, align 4
  %141 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %139, %133
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %3, align 4
  %148 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %146, %142
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @portalclusters, align 4
  %153 = icmp ugt i32 %151, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @portalclusters, align 4
  %158 = icmp ugt i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154, %149
  %160 = load i32, i32* %3, align 4
  %161 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 (i32*, i8*, ...) @fscanf(i32* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32* %5)
  %165 = icmp ne i32 %164, 1
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %162
  %169 = load i32, i32* %10, align 4
  %170 = call i8* @NewFixedWinding(i32 %169)
  %171 = bitcast i8* %170 to %struct.TYPE_16__*
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 6
  store %struct.TYPE_16__* %171, %struct.TYPE_16__** %173, align 8
  store %struct.TYPE_16__* %171, %struct.TYPE_16__** %11, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %214, %168
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %217

181:                                              ; preds = %177
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %184 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %185 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %186 = call i32 (i32*, i8*, ...) @fscanf(i32* %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), double* %183, double* %184, double* %185)
  %187 = icmp ne i32 %186, 3
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load i32, i32* %3, align 4
  %190 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %188, %181
  store i32 0, i32* %15, align 4
  br label %192

192:                                              ; preds = %210, %191
  %193 = load i32, i32* %15, align 4
  %194 = icmp slt i32 %193, 3
  br i1 %194, label %195, label %213

195:                                              ; preds = %192
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 %197
  %199 = load double, double* %198, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load double**, double*** %201, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double*, double** %202, i64 %204
  %206 = load double*, double** %205, align 8
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %206, i64 %208
  store double %199, double* %209, align 8
  br label %210

210:                                              ; preds = %195
  %211 = load i32, i32* %15, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %15, align 4
  br label %192

213:                                              ; preds = %192
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %4, align 4
  br label %177

217:                                              ; preds = %177
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 (i32*, i8*, ...) @fscanf(i32* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %221 = call i32 @PlaneFromWinding(%struct.TYPE_16__* %220, %struct.TYPE_15__* %13)
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leafs, align 8
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %225
  store %struct.TYPE_14__* %226, %struct.TYPE_14__** %7, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @MAX_PORTALS_ON_LEAF, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %217
  %233 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %217
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 7
  %238 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %237, align 8
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %238, i64 %241
  store %struct.TYPE_14__* %235, %struct.TYPE_14__** %242, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %244, align 8
  %247 = load i32, i32* %3, align 4
  %248 = add nsw i32 %247, 1
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* %5, align 4
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 4
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 6
  store %struct.TYPE_16__* %254, %struct.TYPE_16__** %256, align 8
  %257 = load i32, i32* @vec3_origin, align 4
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @VectorSubtract(i32 %257, i32 %259, i32 %263)
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 0, %266
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  store i32 %267, i32* %270, align 4
  %271 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %276 = call i32 @SetPortalSphere(%struct.TYPE_14__* %275)
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 1
  store %struct.TYPE_14__* %278, %struct.TYPE_14__** %6, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** @leafs, align 8
  %280 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i64 %282
  store %struct.TYPE_14__* %283, %struct.TYPE_14__** %7, align 8
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @MAX_PORTALS_ON_LEAF, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %234
  %290 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %234
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 7
  %295 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %294, align 8
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %295, i64 %298
  store %struct.TYPE_14__* %292, %struct.TYPE_14__** %299, align 8
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %301, align 8
  %304 = load i32, i32* %3, align 4
  %305 = add nsw i32 %304, 1
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 2
  store i32 %305, i32* %307, align 8
  %308 = load i32, i32* %5, align 4
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 4
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i8* @NewFixedWinding(i32 %313)
  %315 = bitcast i8* %314 to %struct.TYPE_16__*
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 6
  store %struct.TYPE_16__* %315, %struct.TYPE_16__** %317, align 8
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 6
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  store i32 %320, i32* %324, align 8
  store i32 0, i32* %4, align 4
  br label %325

325:                                              ; preds = %354, %291
  %326 = load i32, i32* %4, align 4
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp slt i32 %326, %329
  br i1 %330, label %331, label %357

331:                                              ; preds = %325
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 1
  %334 = load double**, double*** %333, align 8
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = sub nsw i32 %337, 1
  %339 = load i32, i32* %4, align 4
  %340 = sub nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds double*, double** %334, i64 %341
  %343 = load double*, double** %342, align 8
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 6
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 1
  %348 = load double**, double*** %347, align 8
  %349 = load i32, i32* %4, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds double*, double** %348, i64 %350
  %352 = load double*, double** %351, align 8
  %353 = call i32 @VectorCopy(double* %343, double* %352)
  br label %354

354:                                              ; preds = %331
  %355 = load i32, i32* %4, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %4, align 4
  br label %325

357:                                              ; preds = %325
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 5
  %360 = bitcast %struct.TYPE_15__* %359 to i8*
  %361 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %360, i8* align 4 %361, i64 8, i1 false)
  %362 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 4
  store i32 %363, i32* %365, align 8
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %367 = call i32 @SetPortalSphere(%struct.TYPE_14__* %366)
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 1
  store %struct.TYPE_14__* %369, %struct.TYPE_14__** %6, align 8
  br label %370

370:                                              ; preds = %357
  %371 = load i32, i32* %3, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %3, align 4
  br label %129

373:                                              ; preds = %129
  %374 = load i32, i32* @numfaces, align 4
  %375 = mul nsw i32 2, %374
  %376 = sext i32 %375 to i64
  %377 = mul i64 %376, 56
  %378 = trunc i64 %377 to i32
  %379 = call %struct.TYPE_14__* @safe_malloc(i32 %378)
  store %struct.TYPE_14__* %379, %struct.TYPE_14__** @faces, align 8
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** @faces, align 8
  %381 = load i32, i32* @numfaces, align 4
  %382 = mul nsw i32 2, %381
  %383 = sext i32 %382 to i64
  %384 = mul i64 %383, 56
  %385 = trunc i64 %384 to i32
  %386 = call i32 @memset(%struct.TYPE_14__* %380, i32 0, i32 %385)
  %387 = load i32, i32* @portalclusters, align 4
  %388 = sext i32 %387 to i64
  %389 = mul i64 %388, 56
  %390 = trunc i64 %389 to i32
  %391 = call %struct.TYPE_14__* @safe_malloc(i32 %390)
  store %struct.TYPE_14__* %391, %struct.TYPE_14__** @faceleafs, align 8
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** @faceleafs, align 8
  %393 = load i32, i32* @portalclusters, align 4
  %394 = sext i32 %393 to i64
  %395 = mul i64 %394, 56
  %396 = trunc i64 %395 to i32
  %397 = call i32 @memset(%struct.TYPE_14__* %392, i32 0, i32 %396)
  store i32 0, i32* %3, align 4
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** @faces, align 8
  store %struct.TYPE_14__* %398, %struct.TYPE_14__** %6, align 8
  br label %399

399:                                              ; preds = %519, %373
  %400 = load i32, i32* %3, align 4
  %401 = load i32, i32* @numfaces, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %522

403:                                              ; preds = %399
  %404 = load i32*, i32** %9, align 8
  %405 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %406 = call i32 (i32*, i8*, ...) @fscanf(i32* %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32* %10, i32* %405)
  %407 = icmp ne i32 %406, 2
  br i1 %407, label %408, label %411

408:                                              ; preds = %403
  %409 = load i32, i32* %3, align 4
  %410 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %409)
  br label %411

411:                                              ; preds = %408, %403
  %412 = load i32, i32* %10, align 4
  %413 = call i8* @NewFixedWinding(i32 %412)
  %414 = bitcast i8* %413 to %struct.TYPE_16__*
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 6
  store %struct.TYPE_16__* %414, %struct.TYPE_16__** %416, align 8
  store %struct.TYPE_16__* %414, %struct.TYPE_16__** %11, align 8
  %417 = load i32, i32* %10, align 4
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 0
  store i32 %417, i32* %419, align 8
  store i32 0, i32* %4, align 4
  br label %420

420:                                              ; preds = %457, %411
  %421 = load i32, i32* %4, align 4
  %422 = load i32, i32* %10, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %460

424:                                              ; preds = %420
  %425 = load i32*, i32** %9, align 8
  %426 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %427 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %428 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %429 = call i32 (i32*, i8*, ...) @fscanf(i32* %425, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), double* %426, double* %427, double* %428)
  %430 = icmp ne i32 %429, 3
  br i1 %430, label %431, label %434

431:                                              ; preds = %424
  %432 = load i32, i32* %3, align 4
  %433 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %432)
  br label %434

434:                                              ; preds = %431, %424
  store i32 0, i32* %17, align 4
  br label %435

435:                                              ; preds = %453, %434
  %436 = load i32, i32* %17, align 4
  %437 = icmp slt i32 %436, 3
  br i1 %437, label %438, label %456

438:                                              ; preds = %435
  %439 = load i32, i32* %17, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 %440
  %442 = load double, double* %441, align 8
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i32 0, i32 1
  %445 = load double**, double*** %444, align 8
  %446 = load i32, i32* %4, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds double*, double** %445, i64 %447
  %449 = load double*, double** %448, align 8
  %450 = load i32, i32* %17, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds double, double* %449, i64 %451
  store double %442, double* %452, align 8
  br label %453

453:                                              ; preds = %438
  %454 = load i32, i32* %17, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %17, align 4
  br label %435

456:                                              ; preds = %435
  br label %457

457:                                              ; preds = %456
  %458 = load i32, i32* %4, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %4, align 4
  br label %420

460:                                              ; preds = %420
  %461 = load i32*, i32** %9, align 8
  %462 = call i32 (i32*, i8*, ...) @fscanf(i32* %461, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %464 = call i32 @PlaneFromWinding(%struct.TYPE_16__* %463, %struct.TYPE_15__* %13)
  %465 = load %struct.TYPE_14__*, %struct.TYPE_14__** @faceleafs, align 8
  %466 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %465, i64 %468
  store %struct.TYPE_14__* %469, %struct.TYPE_14__** %7, align 8
  %470 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %470, i32 0, i32 0
  store i32 -1, i32* %471, align 8
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @MAX_PORTALS_ON_LEAF, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %477, label %479

477:                                              ; preds = %460
  %478 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  br label %479

479:                                              ; preds = %477, %460
  %480 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %481 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %481, i32 0, i32 7
  %483 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %482, align 8
  %484 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %485 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %484, i32 0, i32 1
  %486 = load i64, i64* %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %483, i64 %486
  store %struct.TYPE_14__* %480, %struct.TYPE_14__** %487, align 8
  %488 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %488, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = add i64 %490, 1
  store i64 %491, i64* %489, align 8
  %492 = load i32, i32* %3, align 4
  %493 = add nsw i32 %492, 1
  %494 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %494, i32 0, i32 2
  store i32 %493, i32* %495, align 8
  %496 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %497 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %497, i32 0, i32 6
  store %struct.TYPE_16__* %496, %struct.TYPE_16__** %498, align 8
  %499 = load i32, i32* @vec3_origin, align 4
  %500 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %503 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %502, i32 0, i32 5
  %504 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @VectorSubtract(i32 %499, i32 %501, i32 %505)
  %507 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = sub nsw i32 0, %508
  %510 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %510, i32 0, i32 5
  %512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %511, i32 0, i32 0
  store i32 %509, i32* %512, align 4
  %513 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %514 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i32 0, i32 4
  store i32 -1, i32* %514, align 8
  %515 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %516 = call i32 @SetPortalSphere(%struct.TYPE_14__* %515)
  %517 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %517, i32 1
  store %struct.TYPE_14__* %518, %struct.TYPE_14__** %6, align 8
  br label %519

519:                                              ; preds = %479
  %520 = load i32, i32* %3, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %3, align 4
  br label %399

522:                                              ; preds = %399
  %523 = load i32*, i32** %9, align 8
  %524 = call i32 @fclose(i32* %523)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @fscanf(i32*, i8*, ...) #1

declare dso_local i32 @Sys_Printf(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @safe_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i8* @NewFixedWinding(i32) #1

declare dso_local i32 @PlaneFromWinding(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @SetPortalSphere(%struct.TYPE_14__*) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
