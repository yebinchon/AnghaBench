; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_Give_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_Give_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32*, i32*, i32* }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"health\00", align 1
@STAT_MAX_HEALTH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"weapons\00", align 1
@WP_NUM_WEAPONS = common dso_local global i32 0, align 4
@WP_GRAPPLING_HOOK = common dso_local global i32 0, align 4
@WP_NONE = common dso_local global i32 0, align 4
@STAT_WEAPONS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"ammo\00", align 1
@MAX_WEAPONS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"armor\00", align 1
@STAT_ARMOR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"excellent\00", align 1
@PERS_EXCELLENT_COUNT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"impressive\00", align 1
@PERS_IMPRESSIVE_COUNT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"gauntletaward\00", align 1
@PERS_GAUNTLET_FRAG_COUNT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"defend\00", align 1
@PERS_DEFEND_COUNT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"assist\00", align 1
@PERS_ASSIST_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Give_f(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %10 = call i32 @CheatsOk(%struct.TYPE_22__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %241

13:                                               ; preds = %1
  %14 = call i8* @ConcatArgs(i32 1)
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @Q_stricmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, i64* @qtrue, align 8
  store i64 %19, i64* %6, align 8
  br label %22

20:                                               ; preds = %13
  %21 = load i64, i64* @qfalse, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @Q_stricmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25, %22
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br label %241

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @Q_stricmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @WP_NUM_WEAPONS, align 4
  %54 = shl i32 1, %53
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* @WP_GRAPPLING_HOOK, align 4
  %57 = shl i32 1, %56
  %58 = sub nsw i32 %55, %57
  %59 = load i32, i32* @WP_NONE, align 4
  %60 = shl i32 1, %59
  %61 = sub nsw i32 %58, %60
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @STAT_WEAPONS, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %61, i32* %69, align 4
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %52
  br label %241

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @Q_stricmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %77, %74
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %96, %81
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @MAX_WEAPONS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 999, i32* %95, align 4
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %82

99:                                               ; preds = %82
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  br label %241

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %77
  %105 = load i64, i64* %6, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i8*, i8** %3, align 8
  %109 = call i64 @Q_stricmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %107, %104
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @STAT_ARMOR, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 200, i32* %119, align 4
  %120 = load i64, i64* %6, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %111
  br label %241

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %107
  %125 = load i8*, i8** %3, align 8
  %126 = call i64 @Q_stricmp(i8* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %241

139:                                              ; preds = %124
  %140 = load i8*, i8** %3, align 8
  %141 = call i64 @Q_stricmp(i8* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %241

154:                                              ; preds = %139
  %155 = load i8*, i8** %3, align 8
  %156 = call i64 @Q_stricmp(i8* %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %241

169:                                              ; preds = %154
  %170 = load i8*, i8** %3, align 8
  %171 = call i64 @Q_stricmp(i8* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @PERS_DEFEND_COUNT, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %241

184:                                              ; preds = %169
  %185 = load i8*, i8** %3, align 8
  %186 = call i64 @Q_stricmp(i8* %185, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 5
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @PERS_ASSIST_COUNT, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  br label %241

199:                                              ; preds = %184
  %200 = load i64, i64* %6, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %241, label %202

202:                                              ; preds = %199
  %203 = load i8*, i8** %3, align 8
  %204 = call %struct.TYPE_21__* @BG_FindItem(i8* %203)
  store %struct.TYPE_21__* %204, %struct.TYPE_21__** %4, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %206 = icmp ne %struct.TYPE_21__* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  br label %241

208:                                              ; preds = %202
  %209 = call %struct.TYPE_22__* (...) @G_Spawn()
  store %struct.TYPE_22__* %209, %struct.TYPE_22__** %7, align 8
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @VectorCopy(i32 %213, i32 %217)
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %226 = call i32 @G_SpawnItem(%struct.TYPE_22__* %224, %struct.TYPE_21__* %225)
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %228 = call i32 @FinishSpawningItem(%struct.TYPE_22__* %227)
  %229 = call i32 @memset(i32* %8, i32 0, i32 4)
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %232 = call i32 @Touch_Item(%struct.TYPE_22__* %230, %struct.TYPE_22__* %231, i32* %8)
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %208
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %239 = call i32 @G_FreeEntity(%struct.TYPE_22__* %238)
  br label %240

240:                                              ; preds = %237, %208
  br label %241

241:                                              ; preds = %12, %43, %72, %102, %122, %128, %143, %158, %173, %188, %207, %240, %199
  ret void
}

declare dso_local i32 @CheatsOk(%struct.TYPE_22__*) #1

declare dso_local i8* @ConcatArgs(i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local %struct.TYPE_21__* @BG_FindItem(i8*) #1

declare dso_local %struct.TYPE_22__* @G_Spawn(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @G_SpawnItem(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @FinishSpawningItem(%struct.TYPE_22__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @Touch_Item(%struct.TYPE_22__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
