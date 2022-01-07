; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_DeathmatchScoreboardMessage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_DeathmatchScoreboardMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64*, i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i64* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SVF_BOT = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@CON_CONNECTING = common dso_local global i64 0, align 8
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_KILLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c" %i %i %i %i %i %i %i %i %i %i %i %i %i %i\00", align 1
@PERS_SCORE = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_14__* null, align 8
@PERS_IMPRESSIVE_COUNT = common dso_local global i64 0, align 8
@PERS_EXCELLENT_COUNT = common dso_local global i64 0, align 8
@PERS_GAUNTLET_FRAG_COUNT = common dso_local global i64 0, align 8
@PERS_DEFEND_COUNT = common dso_local global i64 0, align 8
@PERS_ASSIST_COUNT = common dso_local global i64 0, align 8
@PERS_CAPTURES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"scores %i %i %i%s\00", align 1
@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeathmatchScoreboardMessage(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1000 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SVF_BOT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %213

22:                                               ; preds = %1
  %23 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %23, align 16
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 0), align 8
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %190, %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %193

29:                                               ; preds = %25
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 4), align 8
  %31 = load i64*, i64** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 1), align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i64 %35
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %8, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CON_CONNECTING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i32 -1, i32* %13, align 4
  br label %58

44:                                               ; preds = %29
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 999
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %50
  %57 = phi i32 [ %54, %50 ], [ 999, %55 ]
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %43
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 100
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sdiv i32 %67, %70
  store i32 %71, i32* %11, align 4
  br label %73

72:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %72, %63
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @PERS_RANK, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @PERS_KILLED, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br label %91

91:                                               ; preds = %82, %73
  %92 = phi i1 [ false, %73 ], [ %90, %82 ]
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  store i32 %94, i32* %12, align 4
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %96 = load i64*, i64** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 1), align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* @PERS_SCORE, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 2), align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %109, %113
  %115 = sdiv i32 %114, 60000
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_entities, align 8
  %118 = load i64*, i64** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 1), align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* @PERS_DEFEND_COUNT, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* @PERS_ASSIST_COUNT, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* @PERS_CAPTURES, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @Com_sprintf(i8* %95, i32 1024, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %100, i64 %107, i32 %108, i32 %115, i32 %116, i32 %126, i32 %127, i64 %134, i64 %141, i64 %148, i64 %155, i64 %162, i32 %163, i64 %170)
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %173 = call i32 @strlen(i8* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = icmp uge i64 %177, 1000
  br i1 %178, label %179, label %180

179:                                              ; preds = %91
  br label %193

180:                                              ; preds = %91
  %181 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %186 = call i32 @strcpy(i8* %184, i8* %185)
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %180
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  br label %25

193:                                              ; preds = %179, %25
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_entities, align 8
  %196 = ptrtoint %struct.TYPE_14__* %194 to i64
  %197 = ptrtoint %struct.TYPE_14__* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sdiv exact i64 %198, 8
  %200 = trunc i64 %199 to i32
  %201 = load i32, i32* %6, align 4
  %202 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 3), align 8
  %203 = load i64, i64* @TEAM_RED, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @level, i32 0, i32 3), align 8
  %207 = load i64, i64* @TEAM_BLUE, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %211 = call i32 @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %201, i32 %205, i32 %209, i8* %210)
  %212 = call i32 @trap_SendServerCommand(i32 %200, i32 %211)
  br label %213

213:                                              ; preds = %193, %21
  ret void
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @trap_SendServerCommand(i32, i32) #1

declare dso_local i32 @va(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
