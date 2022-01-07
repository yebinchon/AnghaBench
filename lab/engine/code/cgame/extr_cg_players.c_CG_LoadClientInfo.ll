; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_LoadClientInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_players.c_CG_LoadClientInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i64 }

@MAX_QPATH = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@cg_buildScript = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [55 x i8] c"CG_RegisterClientModelname( %s, %s, %s, %s %s ) failed\00", align 1
@cgs = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@DEFAULT_BLUETEAM_NAME = common dso_local global i32 0, align 4
@DEFAULT_REDTEAM_NAME = common dso_local global i32 0, align 4
@DEFAULT_TEAM_MODEL = common dso_local global i8* null, align 8
@DEFAULT_TEAM_HEAD = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"DEFAULT_TEAM_MODEL / skin (%s/%s) failed to register\00", align 1
@DEFAULT_MODEL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"DEFAULT_MODEL (%s) failed to register\00", align 1
@qfalse = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"tag_flag\00", align 1
@MAX_CUSTOM_SOUNDS = common dso_local global i32 0, align 4
@cg_customSoundNames = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"sound/player/%s/%s\00", align 1
@MAX_GENTITIES = common dso_local global i32 0, align 4
@cg_entities = common dso_local global %struct.TYPE_15__* null, align 8
@ET_PLAYER = common dso_local global i64 0, align 8
@cg_blueTeamName = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@cg_redTeamName = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*)* @CG_LoadClientInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_LoadClientInfo(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %13 = load i32, i32* @MAX_QPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 16
  %18 = load i8*, i8** @qtrue, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @CG_RegisterClientModelname(%struct.TYPE_12__* %20, i8* %23, i8* %26, i8* %29, i8* %32, i8* %16)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %102, label %35

35:                                               ; preds = %2
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_buildScript, i32 0, i32 0), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, i8*, ...) @CG_Error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %44, i8* %47, i8* %50, i8* %16)
  br label %52

52:                                               ; preds = %38, %35
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0), align 8
  %54 = load i64, i64* @GT_TEAM, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TEAM_BLUE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @DEFAULT_BLUETEAM_NAME, align 4
  %64 = trunc i64 %14 to i32
  %65 = call i32 @Q_strncpyz(i8* %16, i32 %63, i32 %64)
  br label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @DEFAULT_REDTEAM_NAME, align 4
  %68 = trunc i64 %14 to i32
  %69 = call i32 @Q_strncpyz(i8* %16, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = load i8*, i8** @DEFAULT_TEAM_MODEL, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @DEFAULT_TEAM_HEAD, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @CG_RegisterClientModelname(%struct.TYPE_12__* %71, i8* %72, i8* %75, i8* %76, i8* %79, i8* %16)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %70
  %83 = load i8*, i8** @DEFAULT_TEAM_MODEL, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i8*, i8*, ...) @CG_Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %83, i8* %86)
  br label %88

88:                                               ; preds = %82, %70
  br label %99

89:                                               ; preds = %52
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = load i8*, i8** @DEFAULT_MODEL, align 8
  %92 = load i8*, i8** @DEFAULT_MODEL, align 8
  %93 = call i32 @CG_RegisterClientModelname(%struct.TYPE_12__* %90, i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** @DEFAULT_MODEL, align 8
  %97 = call i32 (i8*, i8*, ...) @CG_Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %95, %89
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i8*, i8** @qfalse, align 8
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %2
  %103 = load i8*, i8** @qfalse, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 7
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 8
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 8
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @trap_R_LerpTag(i32* %12, i64 %113, i32 0, i32 0, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i8*, i8** @qtrue, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 7
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %110
  br label %121

121:                                              ; preds = %120, %102
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %5, align 8
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0), align 8
  %126 = load i64, i64* @GT_TEAM, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i8*, i8** @DEFAULT_TEAM_MODEL, align 8
  br label %132

130:                                              ; preds = %121
  %131 = load i8*, i8** @DEFAULT_MODEL, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i8* [ %129, %128 ], [ %131, %130 ]
  store i8* %133, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %192, %132
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @MAX_CUSTOM_SOUNDS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %195

138:                                              ; preds = %134
  %139 = load i8**, i8*** @cg_customSoundNames, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %9, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %138
  br label %195

147:                                              ; preds = %138
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 6
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  store i8* null, i8** %153, align 8
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %147
  %157 = load i8*, i8** %5, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = call i32 @va(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %157, i8* %159)
  %161 = load i8*, i8** @qfalse, align 8
  %162 = call i8* @trap_S_RegisterSound(i32 %160, i8* %161)
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 6
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  store i8* %162, i8** %168, align 8
  br label %169

169:                                              ; preds = %156, %147
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 6
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %191, label %178

178:                                              ; preds = %169
  %179 = load i8*, i8** %6, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = call i32 @va(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %179, i8* %181)
  %183 = load i8*, i8** @qfalse, align 8
  %184 = call i8* @trap_S_RegisterSound(i32 %182, i8* %183)
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 6
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %184, i8** %190, align 8
  br label %191

191:                                              ; preds = %178, %169
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %134

195:                                              ; preds = %146, %134
  %196 = load i8*, i8** @qfalse, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 5
  store i8* %196, i8** %198, align 8
  store i32 0, i32* %7, align 4
  br label %199

199:                                              ; preds = %230, %195
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @MAX_GENTITIES, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %233

203:                                              ; preds = %199
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cg_entities, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %3, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %229

213:                                              ; preds = %203
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cg_entities, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @ET_PLAYER, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %213
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cg_entities, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i64 %226
  %228 = call i32 @CG_ResetPlayerEntity(%struct.TYPE_15__* %227)
  br label %229

229:                                              ; preds = %223, %213, %203
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %199

233:                                              ; preds = %199
  %234 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %234)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CG_RegisterClientModelname(%struct.TYPE_12__*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @CG_Error(i8*, i8*, ...) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i64 @trap_R_LerpTag(i32*, i64, i32, i32, i32, i8*) #2

declare dso_local i8* @trap_S_RegisterSound(i32, i8*) #2

declare dso_local i32 @va(i8*, i8*, i8*) #2

declare dso_local i32 @CG_ResetPlayerEntity(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
