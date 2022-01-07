; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_event.c_CG_UseItem.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_event.c_CG_UseItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_14__, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { i32 }

@EV_EVENT_BITS = common dso_local global i32 0, align 4
@EV_USE_ITEM0 = common dso_local global i32 0, align 4
@HI_NUM_HOLDABLE = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"No item to use\00", align 1
@SCREEN_HEIGHT = common dso_local global double 0.000000e+00, align 8
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Use %s\00", align 1
@CHAN_BODY = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @CG_UseItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_UseItem(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %7, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EV_EVENT_BITS, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load i32, i32* @EV_USE_ITEM0, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @HI_NUM_HOLDABLE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 1), align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load double, double* @SCREEN_HEIGHT, align 8
  %39 = fmul double %38, 3.000000e-01
  %40 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %41 = call i32 @CG_CenterPrint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), double %39, i32 %40)
  br label %53

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = call %struct.TYPE_15__* @BG_FindItemForHoldable(i32 %43)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %6, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load double, double* @SCREEN_HEIGHT, align 8
  %50 = fmul double %49, 3.000000e-01
  %51 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %52 = call i32 @CG_CenterPrint(i8* %48, double %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %37
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i32, i32* %4, align 4
  switch i32 %55, label %56 [
    i32 130, label %57
    i32 128, label %64
    i32 131, label %65
  ]

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %54, %56
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @CHAN_BODY, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cgs, i32 0, i32 0, i32 2), align 8
  %63 = call i32 @trap_S_StartSound(i32* null, i64 %60, i32 %61, i32 %62)
  br label %91

64:                                               ; preds = %54
  br label %91

65:                                               ; preds = %54
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MAX_CLIENTS, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cgs, i32 0, i32 1), align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i64 %79
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %3, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %72, %65
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @CHAN_BODY, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cgs, i32 0, i32 0, i32 1), align 4
  %90 = call i32 @trap_S_StartSound(i32* null, i64 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %64, %57
  ret void
}

declare dso_local i32 @CG_CenterPrint(i8*, double, i32) #1

declare dso_local %struct.TYPE_15__* @BG_FindItemForHoldable(i32) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @trap_S_StartSound(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
