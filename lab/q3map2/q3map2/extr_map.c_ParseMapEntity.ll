; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_ParseMapEntity.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_ParseMapEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64*, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64, i32, i32, float, %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { float }
%struct.TYPE_21__ = type { i64, i32, i32, float, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i8*, i8*, %struct.TYPE_20__* }

@MAX_QPATH = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@token = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@SYS_WRN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [164 x i8] c"WARNING: ParseEntity: { not found, found %s on line %d - last entity was at: <%4.2f, %4.2f, %4.2f>...\0AContinuing to process map, but resulting BSP may be invalid.\0A\00", align 1
@scriptline = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_22__* null, align 8
@numEntities = common dso_local global i64 0, align 8
@MAX_MAP_ENTITIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"numEntities == MAX_MAP_ENTITIES\00", align 1
@entitySourceBrushes = common dso_local global i64 0, align 8
@mapEnt = common dso_local global %struct.TYPE_22__* null, align 8
@numMapEntities = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [110 x i8] c"WARNING: ParseEntity: EOF without closing brace\0AContinuing to process map, but resulting BSP may be invalid.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"patchDef2\00", align 1
@numMapPatches = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"terrainDef\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"WARNING: Terrain entity parsing not supported in this build.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"brushDef\00", align 1
@g_bBrushPrimit = common dso_local global i64 0, align 8
@BPRIMIT_OLDBRUSHES = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [53 x i8] c"Old brush format not allowed in new brush format map\00", align 1
@BPRIMIT_NEWBRUSHES = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [53 x i8] c"New brush format not allowed in old brush format map\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"noradiosity\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"func_group\00", align 1
@WORLDSPAWN_CAST_SHADOWS = common dso_local global i32 0, align 4
@WORLDSPAWN_RECV_SHADOWS = common dso_local global i32 0, align 4
@ENTITY_CAST_SHADOWS = common dso_local global i32 0, align 4
@ENTITY_RECV_SHADOWS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"lightmapscale\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"_lightmapscale\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Entity %d (%s) has lightmap scale of %.4f\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"_celshader\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"textures/%s\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Entity %d (%s) has cel shader %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"group_info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @ParseMapEntity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseMapEntity(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %17 = load i32, i32* @MAX_QPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  %21 = load i64, i64* @qtrue, align 8
  %22 = call i32 @GetToken(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @qfalse, align 8
  store i64 %25, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %394

26:                                               ; preds = %1
  %27 = load i8*, i8** @token, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load i32, i32* @SYS_WRN, align 4
  %32 = load i8*, i8** @token, align 8
  %33 = load i32, i32* @scriptline, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** @entities, align 8
  %35 = load i64, i64* @numEntities, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** @entities, align 8
  %42 = load i64, i64* @numEntities, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** @entities, align 8
  %49 = load i64, i64* @numEntities, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %31, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33, i64 %40, i64 %47, i64 %54)
  %56 = load i64, i64* @qfalse, align 8
  store i64 %56, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %394

57:                                               ; preds = %26
  %58 = load i64, i64* @numEntities, align 8
  %59 = load i64, i64* @MAX_MAP_ENTITIES, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57
  store i64 0, i64* @entitySourceBrushes, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** @entities, align 8
  %65 = load i64, i64* @numEntities, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i64 %65
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** @mapEnt, align 8
  %67 = load i64, i64* @numEntities, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* @numEntities, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %70 = call i32 @memset(%struct.TYPE_22__* %69, i32 0, i32 40)
  %71 = load i64, i64* @numMapEntities, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* @numMapEntities, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* @numMapEntities, align 8
  br label %76

76:                                               ; preds = %172, %63
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* @qtrue, align 8
  %79 = call i32 @GetToken(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @SYS_WRN, align 4
  %83 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %82, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i64, i64* @qfalse, align 8
  store i64 %84, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %394

85:                                               ; preds = %77
  %86 = load i8*, i8** @token, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %173

90:                                               ; preds = %85
  %91 = load i8*, i8** @token, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %145, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* @qtrue, align 8
  %96 = call i32 @GetToken(i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  br label %173

99:                                               ; preds = %94
  %100 = load i8*, i8** @token, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @numMapPatches, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @numMapPatches, align 4
  %106 = load i64, i64* %3, align 8
  %107 = call i32 @ParsePatch(i64 %106)
  br label %142

108:                                              ; preds = %99
  %109 = load i8*, i8** @token, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* @SYS_WRN, align 4
  %114 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %113, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  br label %141

115:                                              ; preds = %108
  %116 = load i8*, i8** @token, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* @g_bBrushPrimit, align 8
  %121 = load i64, i64* @BPRIMIT_OLDBRUSHES, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 @Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %119
  %126 = load i64, i64* @BPRIMIT_NEWBRUSHES, align 8
  store i64 %126, i64* @g_bBrushPrimit, align 8
  %127 = load i64, i64* %3, align 8
  %128 = call i32 @ParseBrush(i64 %127)
  br label %140

129:                                              ; preds = %115
  %130 = load i64, i64* @g_bBrushPrimit, align 8
  %131 = load i64, i64* @BPRIMIT_NEWBRUSHES, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i64, i64* @BPRIMIT_OLDBRUSHES, align 8
  store i64 %136, i64* @g_bBrushPrimit, align 8
  %137 = call i32 (...) @UnGetToken()
  %138 = load i64, i64* %3, align 8
  %139 = call i32 @ParseBrush(i64 %138)
  br label %140

140:                                              ; preds = %135, %125
  br label %141

141:                                              ; preds = %140, %112
  br label %142

142:                                              ; preds = %141, %103
  %143 = load i64, i64* @entitySourceBrushes, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* @entitySourceBrushes, align 8
  br label %172

145:                                              ; preds = %90
  %146 = call %struct.TYPE_20__* (...) @ParseEPair()
  store %struct.TYPE_20__* %146, %struct.TYPE_20__** %4, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %145
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %154
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 2
  store %struct.TYPE_20__* %165, %struct.TYPE_20__** %167, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 4
  store %struct.TYPE_20__* %168, %struct.TYPE_20__** %170, align 8
  br label %171

171:                                              ; preds = %162, %154, %145
  br label %172

172:                                              ; preds = %171, %142
  br label %76

173:                                              ; preds = %98, %89
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %175 = call i8* @ValueForKey(%struct.TYPE_22__* %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  store i8* %175, i8** %5, align 8
  %176 = load i64, i64* %3, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %173
  %179 = load i8*, i8** %5, align 8
  %180 = call i64 @Q_strncasecmp(i8* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i64, i64* @numEntities, align 8
  %184 = add i64 %183, -1
  store i64 %184, i64* @numEntities, align 8
  %185 = load i64, i64* @qtrue, align 8
  store i64 %185, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %394

186:                                              ; preds = %178
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %188 = call i8* @ValueForKey(%struct.TYPE_22__* %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  store i8* %188, i8** %6, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 49
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load i64, i64* @numEntities, align 8
  %196 = add i64 %195, -1
  store i64 %196, i64* @numEntities, align 8
  %197 = load i64, i64* @qtrue, align 8
  store i64 %197, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %394

198:                                              ; preds = %186
  br label %199

199:                                              ; preds = %198, %173
  %200 = load i8*, i8** %5, align 8
  %201 = call i32 @Q_stricmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = load i64, i64* @qtrue, align 8
  store i64 %204, i64* %13, align 8
  br label %207

205:                                              ; preds = %199
  %206 = load i64, i64* @qfalse, align 8
  store i64 %206, i64* %13, align 8
  br label %207

207:                                              ; preds = %205, %203
  %208 = load i64, i64* %13, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %207
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210, %207
  %216 = load i32, i32* @WORLDSPAWN_CAST_SHADOWS, align 4
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* @WORLDSPAWN_RECV_SHADOWS, align 4
  store i32 %217, i32* %15, align 4
  br label %221

218:                                              ; preds = %210
  %219 = load i32, i32* @ENTITY_CAST_SHADOWS, align 4
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* @ENTITY_RECV_SHADOWS, align 4
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %223 = call i32 @GetEntityShadowFlags(%struct.TYPE_22__* %222, i32* null, i32* %14, i32* %15)
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %225 = call i8* @ValueForKey(%struct.TYPE_22__* %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %226 = call i64 @strcmp(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %221
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %230 = call i8* @ValueForKey(%struct.TYPE_22__* %229, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %231 = call i64 @strcmp(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %252

233:                                              ; preds = %228, %221
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %235 = call float @FloatForKey(%struct.TYPE_22__* %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  store float %235, float* %7, align 4
  %236 = load float, float* %7, align 4
  %237 = fcmp ole float %236, 0.000000e+00
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %240 = call float @FloatForKey(%struct.TYPE_22__* %239, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store float %240, float* %7, align 4
  br label %241

241:                                              ; preds = %238, %233
  %242 = load float, float* %7, align 4
  %243 = fcmp ogt float %242, 0.000000e+00
  br i1 %243, label %244, label %251

244:                                              ; preds = %241
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i8*, i8** %5, align 8
  %249 = load float, float* %7, align 4
  %250 = call i32 @Sys_Printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i64 %247, i8* %248, float %249)
  br label %251

251:                                              ; preds = %244, %241
  br label %253

252:                                              ; preds = %228
  store float 0.000000e+00, float* %7, align 4
  br label %253

253:                                              ; preds = %252, %251
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %255 = call i8* @ValueForKey(%struct.TYPE_22__* %254, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store i8* %255, i8** %6, align 8
  %256 = load i8*, i8** %6, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 0
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %253
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** @entities, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i64 0
  %264 = call i8* @ValueForKey(%struct.TYPE_22__* %263, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store i8* %264, i8** %6, align 8
  br label %265

265:                                              ; preds = %261, %253
  %266 = load i8*, i8** %6, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 0
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %265
  %272 = load i8*, i8** %6, align 8
  %273 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %272)
  %274 = call %struct.TYPE_18__* @ShaderInfoForShader(i8* %20)
  store %struct.TYPE_18__* %274, %struct.TYPE_18__** %10, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i8*, i8** %5, align 8
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  %281 = load float, float* %280, align 4
  %282 = call i32 @Sys_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i64 %277, i8* %278, float %281)
  br label %284

283:                                              ; preds = %265
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  br label %284

284:                                              ; preds = %283, %271
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %286, align 8
  store %struct.TYPE_21__* %287, %struct.TYPE_21__** %11, align 8
  br label %288

288:                                              ; preds = %309, %284
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %290 = icmp ne %struct.TYPE_21__* %289, null
  br i1 %290, label %291, label %313

291:                                              ; preds = %288
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 0
  store i64 %294, i64* %296, align 8
  %297 = load i32, i32* %14, align 4
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 8
  %300 = load i32, i32* %15, align 4
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 4
  %303 = load float, float* %7, align 4
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 3
  store float %303, float* %305, align 8
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 4
  store %struct.TYPE_18__* %306, %struct.TYPE_18__** %308, align 8
  br label %309

309:                                              ; preds = %291
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 5
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %311, align 8
  store %struct.TYPE_21__* %312, %struct.TYPE_21__** %11, align 8
  br label %288

313:                                              ; preds = %288
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %315, align 8
  store %struct.TYPE_19__* %316, %struct.TYPE_19__** %12, align 8
  br label %317

317:                                              ; preds = %338, %313
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %319 = icmp ne %struct.TYPE_19__* %318, null
  br i1 %319, label %320, label %342

320:                                              ; preds = %317
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 0
  store i64 %323, i64* %325, align 8
  %326 = load i32, i32* %14, align 4
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 1
  store i32 %326, i32* %328, align 8
  %329 = load i32, i32* %15, align 4
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 4
  %332 = load float, float* %7, align 4
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 3
  store float %332, float* %334, align 8
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 4
  store %struct.TYPE_18__* %335, %struct.TYPE_18__** %337, align 8
  br label %338

338:                                              ; preds = %320
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 5
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %340, align 8
  store %struct.TYPE_19__* %341, %struct.TYPE_19__** %12, align 8
  br label %317

342:                                              ; preds = %317
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %344 = call i32 @SetEntityBounds(%struct.TYPE_22__* %343)
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %346 = call i32 @LoadEntityIndexMap(%struct.TYPE_22__* %345)
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 1
  %350 = load i64*, i64** %349, align 8
  %351 = call i32 @GetVectorForKey(%struct.TYPE_22__* %347, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i64* %350)
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 1
  %354 = load i64*, i64** %353, align 8
  %355 = getelementptr inbounds i64, i64* %354, i64 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %372, label %358

358:                                              ; preds = %342
  %359 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i32 0, i32 1
  %361 = load i64*, i64** %360, align 8
  %362 = getelementptr inbounds i64, i64* %361, i64 1
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %372, label %365

365:                                              ; preds = %358
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 1
  %368 = load i64*, i64** %367, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 2
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %365, %358, %342
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %374 = call i32 @AdjustBrushesForOrigin(%struct.TYPE_22__* %373)
  br label %375

375:                                              ; preds = %372, %365
  %376 = load i8*, i8** %5, align 8
  %377 = call i32 @Q_stricmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %383, label %379

379:                                              ; preds = %375
  %380 = load i64, i64* @numEntities, align 8
  %381 = add i64 %380, -1
  store i64 %381, i64* @numEntities, align 8
  %382 = load i64, i64* @qtrue, align 8
  store i64 %382, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %394

383:                                              ; preds = %375
  %384 = load i64, i64* %13, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %383
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapEnt, align 8
  %388 = call i32 @MoveBrushesToWorld(%struct.TYPE_22__* %387)
  %389 = load i64, i64* @numEntities, align 8
  %390 = add i64 %389, -1
  store i64 %390, i64* @numEntities, align 8
  %391 = load i64, i64* @qtrue, align 8
  store i64 %391, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %394

392:                                              ; preds = %383
  %393 = load i64, i64* @qtrue, align 8
  store i64 %393, i64* %2, align 8
  store i32 1, i32* %16, align 4
  br label %394

394:                                              ; preds = %392, %386, %379, %194, %182, %81, %30, %24
  %395 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %395)
  %396 = load i64, i64* %2, align 8
  ret i64 %396
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetToken(i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #2

declare dso_local i32 @ParsePatch(i64) #2

declare dso_local i32 @ParseBrush(i64) #2

declare dso_local i32 @UnGetToken(...) #2

declare dso_local %struct.TYPE_20__* @ParseEPair(...) #2

declare dso_local i8* @ValueForKey(%struct.TYPE_22__*, i8*) #2

declare dso_local i64 @Q_strncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @GetEntityShadowFlags(%struct.TYPE_22__*, i32*, i32*, i32*) #2

declare dso_local float @FloatForKey(%struct.TYPE_22__*, i8*) #2

declare dso_local i32 @Sys_Printf(i8*, i64, i8*, float) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local %struct.TYPE_18__* @ShaderInfoForShader(i8*) #2

declare dso_local i32 @SetEntityBounds(%struct.TYPE_22__*) #2

declare dso_local i32 @LoadEntityIndexMap(%struct.TYPE_22__*) #2

declare dso_local i32 @GetVectorForKey(%struct.TYPE_22__*, i8*, i64*) #2

declare dso_local i32 @AdjustBrushesForOrigin(%struct.TYPE_22__*) #2

declare dso_local i32 @MoveBrushesToWorld(%struct.TYPE_22__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
