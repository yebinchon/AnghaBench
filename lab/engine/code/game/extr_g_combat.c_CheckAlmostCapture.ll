; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_combat.c_CheckAlmostCapture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_combat.c_CheckAlmostCapture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32*, i32, i64* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@PW_REDFLAG = common dso_local global i64 0, align 8
@PW_BLUEFLAG = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i64 0, align 8
@g_gametype = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@GT_CTF = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"team_CTF_blueflag\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"team_CTF_redflag\00", align 1
@FL_DROPPED_ITEM = common dso_local global i32 0, align 4
@SVF_NOCLIENT = common dso_local global i32 0, align 4
@PLAYEREVENT_HOLYSHIT = common dso_local global i32 0, align 4
@PERS_PLAYEREVENTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckAlmostCapture(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @PW_REDFLAG, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @PW_BLUEFLAG, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %18
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %145

40:                                               ; preds = %29, %18, %2
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @g_gametype, i32 0, i32 0), align 8
  %42 = load i64, i64* @GT_CTF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TEAM_BLUE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %55

54:                                               ; preds = %44
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %55

55:                                               ; preds = %54, %53
  br label %68

56:                                               ; preds = %40
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TEAM_BLUE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %67

66:                                               ; preds = %56
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67, %55
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %69

69:                                               ; preds = %85, %68
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @FOFS(i8* %71)
  %73 = load i8*, i8** %7, align 8
  %74 = call %struct.TYPE_17__* @G_Find(%struct.TYPE_17__* %70, i32 %72, i8* %73)
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %5, align 8
  br label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = icmp ne %struct.TYPE_17__* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FL_DROPPED_ITEM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %78, %75
  %86 = phi i1 [ false, %75 ], [ %84, %78 ]
  br i1 %86, label %69, label %87

87:                                               ; preds = %85
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = icmp ne %struct.TYPE_17__* %88, null
  br i1 %89, label %90, label %144

90:                                               ; preds = %87
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SVF_NOCLIENT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %144, label %98

98:                                               ; preds = %90
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @VectorSubtract(i32 %104, i32 %108, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @VectorLength(i32 %111)
  %113 = icmp slt i32 %112, 200
  br i1 %113, label %114, label %143

114:                                              ; preds = %98
  %115 = load i32, i32* @PLAYEREVENT_HOLYSHIT, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %124, %115
  store i32 %125, i32* %123, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = icmp ne %struct.TYPE_16__* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %114
  %131 = load i32, i32* @PLAYEREVENT_HOLYSHIT, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = xor i32 %140, %131
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %130, %114
  br label %143

143:                                              ; preds = %142, %98
  br label %144

144:                                              ; preds = %143, %90, %87
  br label %145

145:                                              ; preds = %144, %29
  ret void
}

declare dso_local %struct.TYPE_17__* @G_Find(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @FOFS(i8*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorLength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
