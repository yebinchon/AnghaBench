; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_TeamplayInfoMessage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_team.c_TeamplayInfoMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__*, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32* }

@TEAM_MAXOVERLAY = common dso_local global i32 0, align 4
@TEAM_SPECTATOR = common dso_local global i32 0, align 4
@SPECTATOR_FOLLOW = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_18__* null, align 8
@TEAM_RED = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@g_maxclients = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@level = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@SortClients = common dso_local global i32 0, align 4
@STAT_HEALTH = common dso_local global i64 0, align 8
@STAT_ARMOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c" %i %i %i %i %i %i\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"tinfo %i %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TeamplayInfoMessage(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [8192 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %16 = load i32, i32* @TEAM_MAXOVERLAY, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 1, i32* %15, align 4
  br label %250

28:                                               ; preds = %1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TEAM_SPECTATOR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %28
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SPECTATOR_FOLLOW, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %37
  store i32 1, i32* %15, align 4
  br label %250

55:                                               ; preds = %46
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** @g_entities, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %14, align 4
  br label %76

69:                                               ; preds = %28
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %69, %55
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @TEAM_RED, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @TEAM_BLUE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %15, align 4
  br label %250

85:                                               ; preds = %80, %76
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %129, %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_maxclients, i32 0, i32 0), align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @TEAM_MAXOVERLAY, align 4
  %93 = icmp slt i32 %91, %92
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i1 [ false, %86 ], [ %93, %90 ]
  br i1 %95, label %96, label %132

96:                                               ; preds = %94
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** @g_entities, align 8
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 0), align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i64 %103
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %8, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %96
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %109
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 0), align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %19, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %118, %109, %96
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %86

132:                                              ; preds = %94
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @SortClients, align 4
  %135 = call i32 @qsort(i32* %19, i32 %133, i32 4, i32 %134)
  %136 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %136, align 16
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %235, %132
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_maxclients, i32 0, i32 0), align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @TEAM_MAXOVERLAY, align 4
  %144 = icmp slt i32 %142, %143
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i1 [ false, %137 ], [ %144, %141 ]
  br i1 %146, label %147, label %238

147:                                              ; preds = %145
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** @g_entities, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i64 %150
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %8, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %234

156:                                              ; preds = %147
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %234

165:                                              ; preds = %156
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @STAT_HEALTH, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %10, align 4
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @STAT_ARMOR, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %165
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %186, %165
  %188 = load i32, i32* %11, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 0, i32* %11, align 4
  br label %191

191:                                              ; preds = %190, %187
  %192 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @Com_sprintf(i8* %192, i32 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %193, i32 %200, i32 %201, i32 %202, i32 %208, i32 %212)
  %214 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %215 = call i32 @strlen(i8* %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = icmp uge i64 %219, 8192
  br i1 %220, label %221, label %222

221:                                              ; preds = %191
  br label %238

222:                                              ; preds = %191
  %223 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %228 = call i32 @strcpy(i8* %226, i8* %227)
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %222, %156, %147
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %137

238:                                              ; preds = %221, %145
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** @g_entities, align 8
  %241 = ptrtoint %struct.TYPE_18__* %239 to i64
  %242 = ptrtoint %struct.TYPE_18__* %240 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 24
  %245 = trunc i64 %244 to i32
  %246 = load i32, i32* %9, align 4
  %247 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %248 = call i32 @va(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %246, i8* %247)
  %249 = call i32 @trap_SendServerCommand(i32 %245, i32 %248)
  store i32 0, i32* %15, align 4
  br label %250

250:                                              ; preds = %238, %84, %54, %27
  %251 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %251)
  %252 = load i32, i32* %15, align 4
  switch i32 %252, label %254 [
    i32 0, label %253
    i32 1, label %253
  ]

253:                                              ; preds = %250, %250
  ret void

254:                                              ; preds = %250
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @trap_SendServerCommand(i32, i32) #2

declare dso_local i32 @va(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
