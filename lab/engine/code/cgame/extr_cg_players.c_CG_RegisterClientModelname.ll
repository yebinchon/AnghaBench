; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_RegisterClientModelname.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_RegisterClientModelname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"models/players/%s/lower.md3\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"models/players/characters/%s/lower.md3\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to load model file %s\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"models/players/%s/upper.md3\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"models/players/characters/%s/upper.md3\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"models/players/heads/%s/%s.md3\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"models/players/%s/head.md3\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Failed to load skin file: %s : %s : %s, %s : %s\0A\00", align 1
@TEAM_BLUE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@DEFAULT_BLUETEAM_NAME = common dso_local global i8* null, align 8
@DEFAULT_REDTEAM_NAME = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [44 x i8] c"Failed to load skin file: %s : %s, %s : %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"models/players/%s/animation.cfg\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"models/players/characters/%s/animation.cfg\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Failed to load animation file %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"skin\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8*)* @CG_RegisterClientModelname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_RegisterClientModelname(%struct.TYPE_6__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i32, i32* @MAX_QPATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @MAX_QPATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %16, align 8
  br label %35

33:                                               ; preds = %6
  %34 = load i8*, i8** %11, align 8
  store i8* %34, i8** %16, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = trunc i64 %20 to i32
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i8* @trap_R_RegisterModel(i8* %22)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %35
  %47 = trunc i64 %20 to i32
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = call i8* @trap_R_RegisterModel(i8* %22)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %247

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %35
  %62 = trunc i64 %20 to i32
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = call i8* @trap_R_RegisterModel(i8* %22)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %61
  %73 = trunc i64 %20 to i32
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  %76 = call i8* @trap_R_RegisterModel(i8* %22)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  %84 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %85 = load i32, i32* @qfalse, align 4
  store i32 %85, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %247

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %61
  %88 = load i8*, i8** %16, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 42
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = trunc i64 %20 to i32
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %96, i8* %98)
  br label %104

100:                                              ; preds = %87
  %101 = trunc i64 %20 to i32
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %100, %93
  %105 = call i8* @trap_R_RegisterModel(i8* %22)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %126, label %112

112:                                              ; preds = %104
  %113 = load i8*, i8** %16, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 42
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = trunc i64 %20 to i32
  %120 = load i8*, i8** %11, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %120, i8* %121)
  %123 = call i8* @trap_R_RegisterModel(i8* %22)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %118, %112, %104
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %133 = load i32, i32* @qfalse, align 4
  store i32 %133, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %247

134:                                              ; preds = %126
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = call i32 @CG_RegisterClientSkin(%struct.TYPE_6__* %135, i8* %136, i8* %137, i8* %138, i8* %139, i8* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %195, label %143

143:                                              ; preds = %134
  %144 = load i8*, i8** %13, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %187

146:                                              ; preds = %143
  %147 = load i8*, i8** %13, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %187

151:                                              ; preds = %146
  %152 = load i8*, i8** %13, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %152, i8* %153, i8* %154, i8* %155, i8* %156)
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TEAM_BLUE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %151
  %164 = trunc i64 %24 to i32
  %165 = load i8*, i8** @DEFAULT_BLUETEAM_NAME, align 8
  %166 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %25, i32 %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %165)
  br label %171

167:                                              ; preds = %151
  %168 = trunc i64 %24 to i32
  %169 = load i8*, i8** @DEFAULT_REDTEAM_NAME, align 8
  %170 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %25, i32 %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = load i8*, i8** %16, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = call i32 @CG_RegisterClientSkin(%struct.TYPE_6__* %172, i8* %25, i8* %173, i8* %174, i8* %175, i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %171
  %180 = load i8*, i8** %9, align 8
  %181 = load i8*, i8** %10, align 8
  %182 = load i8*, i8** %16, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %25, i8* %180, i8* %181, i8* %182, i8* %183)
  %185 = load i32, i32* @qfalse, align 4
  store i32 %185, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %247

186:                                              ; preds = %171
  br label %194

187:                                              ; preds = %146, %143
  %188 = load i8*, i8** %9, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = load i8*, i8** %16, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %188, i8* %189, i8* %190, i8* %191)
  %193 = load i32, i32* @qfalse, align 4
  store i32 %193, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %247

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194, %134
  %196 = trunc i64 %20 to i32
  %197 = load i8*, i8** %9, align 8
  %198 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %197)
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %200 = call i32 @CG_ParseAnimationFile(i8* %22, %struct.TYPE_6__* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %195
  %203 = trunc i64 %20 to i32
  %204 = load i8*, i8** %9, align 8
  %205 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %203, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %204)
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %207 = call i32 @CG_ParseAnimationFile(i8* %22, %struct.TYPE_6__* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %202
  %210 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %22)
  %211 = load i32, i32* @qfalse, align 4
  store i32 %211, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %247

212:                                              ; preds = %202
  br label %213

213:                                              ; preds = %212, %195
  %214 = trunc i64 %20 to i32
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %216 = load i8*, i8** %13, align 8
  %217 = load i8*, i8** %16, align 8
  %218 = load i8*, i8** %12, align 8
  %219 = call i64 @CG_FindClientHeadFile(i8* %22, i32 %214, %struct.TYPE_6__* %215, i8* %216, i8* %217, i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %213
  %222 = call i8* @trap_R_RegisterShaderNoMip(i8* %22)
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  store i8* %222, i8** %224, align 8
  br label %238

225:                                              ; preds = %213
  %226 = trunc i64 %20 to i32
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %228 = load i8*, i8** %13, align 8
  %229 = load i8*, i8** %16, align 8
  %230 = load i8*, i8** %12, align 8
  %231 = call i64 @CG_FindClientHeadFile(i8* %22, i32 %226, %struct.TYPE_6__* %227, i8* %228, i8* %229, i8* %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = call i8* @trap_R_RegisterShaderNoMip(i8* %22)
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  br label %237

237:                                              ; preds = %233, %225
  br label %238

238:                                              ; preds = %237, %221
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %238
  %244 = load i32, i32* @qfalse, align 4
  store i32 %244, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %247

245:                                              ; preds = %238
  %246 = load i32, i32* @qtrue, align 4
  store i32 %246, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %247

247:                                              ; preds = %245, %243, %209, %187, %179, %131, %83, %57
  %248 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %248)
  %249 = load i32, i32* %7, align 4
  ret i32 %249
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @trap_R_RegisterModel(i8*) #2

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #2

declare dso_local i32 @CG_RegisterClientSkin(%struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @CG_ParseAnimationFile(i8*, %struct.TYPE_6__*) #2

declare dso_local i64 @CG_FindClientHeadFile(i8*, i32, %struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i8* @trap_R_RegisterShaderNoMip(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
