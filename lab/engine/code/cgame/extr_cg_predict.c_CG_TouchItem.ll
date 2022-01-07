; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_predict.c_CG_TouchItem.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_predict.c_CG_TouchItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64*, i32*, i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32 }

@cg_predictItems = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@bg_itemlist = common dso_local global %struct.TYPE_13__* null, align 8
@GT_CTF = common dso_local global i64 0, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@IT_TEAM = common dso_local global i64 0, align 8
@PW_REDFLAG = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i64 0, align 8
@PW_BLUEFLAG = common dso_local global i32 0, align 4
@EV_ITEM_PICKUP = common dso_local global i32 0, align 4
@EF_NODRAW = common dso_local global i32 0, align 4
@IT_WEAPON = common dso_local global i64 0, align 8
@STAT_WEAPONS = common dso_local global i64 0, align 8
@GT_1FCTF = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @CG_TouchItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_TouchItem(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_predictItems, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %126

7:                                                ; preds = %1
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %11 = call i32 @BG_PlayerTouchesItem(%struct.TYPE_18__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1), %struct.TYPE_19__* %9, i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %126

14:                                               ; preds = %7
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %126

21:                                               ; preds = %14
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 0), align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = call i32 @BG_CanItemBeGrabbed(i64 %22, %struct.TYPE_19__* %24, %struct.TYPE_18__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %126

28:                                               ; preds = %21
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @bg_itemlist, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i64 %33
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %3, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 0), align 8
  %36 = load i64, i64* @GT_CTF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %28
  %39 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1, i32 0), align 8
  %40 = load i64, i64* @PERS_TEAM, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TEAM_RED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IT_TEAM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PW_REDFLAG, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %126

58:                                               ; preds = %51, %45, %38
  %59 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1, i32 0), align 8
  %60 = load i64, i64* @PERS_TEAM, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TEAM_BLUE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IT_TEAM, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PW_BLUEFLAG, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %126

78:                                               ; preds = %71, %65, %58
  br label %79

79:                                               ; preds = %78, %28
  %80 = load i32, i32* @EV_ITEM_PICKUP, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @BG_AddPredictableEventToPlayerstate(i32 %80, i64 %84, %struct.TYPE_18__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1))
  %86 = load i32, i32* @EF_NODRAW, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 0), align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IT_WEAPON, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %79
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 1, %103
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1, i32 1), align 8
  %106 = load i64, i64* @STAT_WEAPONS, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1, i32 2), align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %100
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg, i32 0, i32 1, i32 2), align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %118, %100
  br label %126

126:                                              ; preds = %6, %13, %20, %27, %57, %77, %125, %79
  ret void
}

declare dso_local i32 @BG_PlayerTouchesItem(%struct.TYPE_18__*, %struct.TYPE_19__*, i64) #1

declare dso_local i32 @BG_CanItemBeGrabbed(i64, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @BG_AddPredictableEventToPlayerstate(i32, i64, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
