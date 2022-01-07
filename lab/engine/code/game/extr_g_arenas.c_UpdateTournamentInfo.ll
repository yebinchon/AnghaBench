; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_arenas.c_UpdateTournamentInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_arenas.c_UpdateTournamentInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32*, i64*, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__*, %struct.TYPE_11__, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_17__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"postgame %i %i 0 0 0 0 0 0\00", align 1
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_KILLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"postgame %i %i %i %i %i %i %i %i\00", align 1
@PERS_IMPRESSIVE_COUNT = common dso_local global i64 0, align 8
@PERS_EXCELLENT_COUNT = common dso_local global i64 0, align 8
@PERS_GAUNTLET_FRAG_COUNT = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c" %i %i %i\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i64 0, align 8
@PERS_ASSIST_COUNT = common dso_local global i64 0, align 8
@PERS_CAPTURES = common dso_local global i64 0, align 8
@PERS_DEFEND_COUNT = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@g_gametype = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateTournamentInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load i32, i32* @MAX_STRING_CHARS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %40, %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_entities, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i64 %23
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %2, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %40

30:                                               ; preds = %20
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SVF_BOT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %16

43:                                               ; preds = %38, %16
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = icmp ne %struct.TYPE_17__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 0), align 8
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %43
  store i32 1, i32* %11, align 4
  br label %211

51:                                               ; preds = %46
  %52 = load i32, i32* %1, align 4
  store i32 %52, i32* %3, align 4
  %53 = call i32 (...) @CalculateRanks()
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 4), align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TEAM_SPECTATOR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = trunc i64 %13 to i32
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 1), align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (i8*, i32, i8*, i32, i32, ...) @Com_sprintf(i8* %15, i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  br label %158

68:                                               ; preds = %51
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 100
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %81, %86
  store i32 %87, i32* %5, align 4
  br label %89

88:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %75
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 4), align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @PERS_RANK, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %89
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @PERS_KILLED, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br label %112

112:                                              ; preds = %101, %89
  %113 = phi i1 [ false, %89 ], [ %111, %101 ]
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  store i32 %115, i32* %6, align 4
  %116 = trunc i64 %13 to i32
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 1), align 4
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* @PERS_SCORE, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 (i8*, i32, i8*, i32, i32, ...) @Com_sprintf(i8* %15, i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118, i32 %119, i64 %128, i64 %137, i64 %146, i64 %155, i32 %156)
  br label %158

158:                                              ; preds = %112, %63
  %159 = call i32 @strlen(i8* %15)
  store i32 %159, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %160

160:                                              ; preds = %205, %158
  %161 = load i32, i32* %1, align 4
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 1), align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %208

164:                                              ; preds = %160
  %165 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 3), align 8
  %166 = load i32, i32* %1, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %4, align 4
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %172 = load i32, i32* %4, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 4), align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @PERS_RANK, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @level, i32 0, i32 4), align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @PERS_SCORE, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, i32, i8*, i32, i32, ...) @Com_sprintf(i8* %171, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %182, i32 %192)
  %194 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %195 = call i32 @strlen(i8* %194)
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp uge i64 %199, %13
  br i1 %200, label %201, label %202

201:                                              ; preds = %164
  br label %208

202:                                              ; preds = %164
  %203 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %204 = call i32 @strcat(i8* %15, i8* %203)
  br label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %1, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %1, align 4
  br label %160

208:                                              ; preds = %201, %160
  %209 = load i32, i32* @EXEC_APPEND, align 4
  %210 = call i32 @trap_SendConsoleCommand(i32 %209, i8* %15)
  store i32 0, i32* %11, align 4
  br label %211

211:                                              ; preds = %208, %50
  %212 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %11, align 4
  switch i32 %213, label %215 [
    i32 0, label %214
    i32 1, label %214
  ]

214:                                              ; preds = %211, %211
  ret void

215:                                              ; preds = %211
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CalculateRanks(...) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i32, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @trap_SendConsoleCommand(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
