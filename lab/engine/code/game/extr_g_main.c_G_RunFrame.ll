; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_G_RunFrame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_G_RunFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i64, i32, i64, %struct.TYPE_22__, i64, i64, %struct.TYPE_21__, i64, %struct.TYPE_20__*, i32, i64, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i64, i32, i32, i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_25__ = type { i64 }

@level = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_23__* null, align 8
@EVENT_VALID_MSEC = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@ET_MISSILE = common dso_local global i64 0, align 8
@ET_ITEM = common dso_local global i64 0, align 8
@ET_MOVER = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@g_listEntity = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@MAX_GENTITIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%4i: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"g_listEntity\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RunFrame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @level, i32 0, i32 5), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %232

8:                                                ; preds = %1
  %9 = call i32 (...) @G_SpawnDynamicPickups()
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @level, i32 0, i32 4), align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @level, i32 0, i32 4), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @level, i32 0, i32 1), align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @level, i32 0, i32 0), align 8
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @level, i32 0, i32 1), align 4
  %14 = call i32 (...) @G_UpdateCvars()
  %15 = call i32 (...) @BG_UpdateItems()
  %16 = call i32 (...) @dmlab_entities_clear()
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** @g_entities, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i64 0
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %175, %8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @level, i32 0, i32 2), align 8
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %180

23:                                               ; preds = %19
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %175

29:                                               ; preds = %23
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @level, i32 0, i32 1), align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load i64, i64* @EVENT_VALID_MSEC, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %29
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 11
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = icmp ne %struct.TYPE_19__* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 11
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %44
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %66 = call i32 @G_FreeEntity(%struct.TYPE_23__* %65)
  br label %175

67:                                               ; preds = %59
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i64, i64* @qfalse, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 10
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %77 = call i32 @trap_UnlinkEntity(%struct.TYPE_23__* %76)
  br label %78

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %29
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = icmp ne %struct.TYPE_20__* %83, null
  br i1 %84, label %85, label %112

85:                                               ; preds = %80
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dmlab_entities_add(i32 %89, i32 %92, i32 %97, i32 %101, i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %85, %80
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %175

118:                                              ; preds = %112
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %175

130:                                              ; preds = %124, %118
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ET_MISSILE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %139 = call i32 @G_RunMissile(%struct.TYPE_23__* %138)
  br label %175

140:                                              ; preds = %130
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ET_ITEM, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %152, label %147

147:                                              ; preds = %140
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147, %140
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %154 = call i32 @G_RunItem(%struct.TYPE_23__* %153)
  br label %175

155:                                              ; preds = %147
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @ET_MOVER, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %164 = call i32 @G_RunMover(%struct.TYPE_23__* %163)
  br label %175

165:                                              ; preds = %155
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @MAX_CLIENTS, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %171 = call i32 @G_RunClient(%struct.TYPE_23__* %170)
  br label %175

172:                                              ; preds = %165
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %174 = call i32 @G_RunThink(%struct.TYPE_23__* %173)
  br label %175

175:                                              ; preds = %172, %169, %162, %152, %137, %129, %117, %64, %28
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %3, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 1
  store %struct.TYPE_23__* %179, %struct.TYPE_23__** %4, align 8
  br label %19

180:                                              ; preds = %19
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** @g_entities, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i64 0
  store %struct.TYPE_23__* %182, %struct.TYPE_23__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %196, %180
  %184 = load i32, i32* %3, align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @level, i32 0, i32 3), align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %183
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %194 = call i32 @ClientEndFrame(%struct.TYPE_23__* %193)
  br label %195

195:                                              ; preds = %192, %187
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %3, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %3, align 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 1
  store %struct.TYPE_23__* %200, %struct.TYPE_23__** %4, align 8
  br label %183

201:                                              ; preds = %183
  %202 = call i32 (...) @CheckTournament()
  %203 = call i32 (...) @CheckExitRules()
  %204 = call i32 (...) @CheckTeamStatus()
  %205 = call i32 (...) @CheckVote()
  %206 = load i32, i32* @TEAM_RED, align 4
  %207 = call i32 @CheckTeamVote(i32 %206)
  %208 = load i32, i32* @TEAM_BLUE, align 4
  %209 = call i32 @CheckTeamVote(i32 %208)
  %210 = call i32 (...) @CheckCvars()
  %211 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @g_listEntity, i32 0, i32 0), align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %232

213:                                              ; preds = %201
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %227, %213
  %215 = load i32, i32* %3, align 4
  %216 = load i32, i32* @MAX_GENTITIES, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %230

218:                                              ; preds = %214
  %219 = load i32, i32* %3, align 4
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** @g_entities, align 8
  %221 = load i32, i32* %3, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @G_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %219, i32 %225)
  br label %227

227:                                              ; preds = %218
  %228 = load i32, i32* %3, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %3, align 4
  br label %214

230:                                              ; preds = %214
  %231 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %232

232:                                              ; preds = %7, %230, %201
  ret void
}

declare dso_local i32 @G_SpawnDynamicPickups(...) #1

declare dso_local i32 @G_UpdateCvars(...) #1

declare dso_local i32 @BG_UpdateItems(...) #1

declare dso_local i32 @dmlab_entities_clear(...) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_23__*) #1

declare dso_local i32 @trap_UnlinkEntity(%struct.TYPE_23__*) #1

declare dso_local i32 @dmlab_entities_add(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @G_RunMissile(%struct.TYPE_23__*) #1

declare dso_local i32 @G_RunItem(%struct.TYPE_23__*) #1

declare dso_local i32 @G_RunMover(%struct.TYPE_23__*) #1

declare dso_local i32 @G_RunClient(%struct.TYPE_23__*) #1

declare dso_local i32 @G_RunThink(%struct.TYPE_23__*) #1

declare dso_local i32 @ClientEndFrame(%struct.TYPE_23__*) #1

declare dso_local i32 @CheckTournament(...) #1

declare dso_local i32 @CheckExitRules(...) #1

declare dso_local i32 @CheckTeamStatus(...) #1

declare dso_local i32 @CheckVote(...) #1

declare dso_local i32 @CheckTeamVote(i32) #1

declare dso_local i32 @CheckCvars(...) #1

declare dso_local i32 @G_Printf(i8*, i32, i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
