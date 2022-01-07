; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_InitTravelFlagFromType.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_InitTravelFlagFromType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** }

@MAX_TRAVELTYPES = common dso_local global i32 0, align 4
@TFL_INVALID = common dso_local global i8* null, align 8
@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TRAVEL_INVALID = common dso_local global i64 0, align 8
@TFL_WALK = common dso_local global i8* null, align 8
@TRAVEL_WALK = common dso_local global i64 0, align 8
@TFL_CROUCH = common dso_local global i8* null, align 8
@TRAVEL_CROUCH = common dso_local global i64 0, align 8
@TFL_BARRIERJUMP = common dso_local global i8* null, align 8
@TRAVEL_BARRIERJUMP = common dso_local global i64 0, align 8
@TFL_JUMP = common dso_local global i8* null, align 8
@TRAVEL_JUMP = common dso_local global i64 0, align 8
@TFL_LADDER = common dso_local global i8* null, align 8
@TRAVEL_LADDER = common dso_local global i64 0, align 8
@TFL_WALKOFFLEDGE = common dso_local global i8* null, align 8
@TRAVEL_WALKOFFLEDGE = common dso_local global i64 0, align 8
@TFL_SWIM = common dso_local global i8* null, align 8
@TRAVEL_SWIM = common dso_local global i64 0, align 8
@TFL_WATERJUMP = common dso_local global i8* null, align 8
@TRAVEL_WATERJUMP = common dso_local global i64 0, align 8
@TFL_TELEPORT = common dso_local global i8* null, align 8
@TRAVEL_TELEPORT = common dso_local global i64 0, align 8
@TFL_ELEVATOR = common dso_local global i8* null, align 8
@TRAVEL_ELEVATOR = common dso_local global i64 0, align 8
@TFL_ROCKETJUMP = common dso_local global i8* null, align 8
@TRAVEL_ROCKETJUMP = common dso_local global i64 0, align 8
@TFL_BFGJUMP = common dso_local global i8* null, align 8
@TRAVEL_BFGJUMP = common dso_local global i64 0, align 8
@TFL_GRAPPLEHOOK = common dso_local global i8* null, align 8
@TRAVEL_GRAPPLEHOOK = common dso_local global i64 0, align 8
@TFL_DOUBLEJUMP = common dso_local global i8* null, align 8
@TRAVEL_DOUBLEJUMP = common dso_local global i64 0, align 8
@TFL_RAMPJUMP = common dso_local global i8* null, align 8
@TRAVEL_RAMPJUMP = common dso_local global i64 0, align 8
@TFL_STRAFEJUMP = common dso_local global i8* null, align 8
@TRAVEL_STRAFEJUMP = common dso_local global i64 0, align 8
@TFL_JUMPPAD = common dso_local global i8* null, align 8
@TRAVEL_JUMPPAD = common dso_local global i64 0, align 8
@TFL_FUNCBOB = common dso_local global i8* null, align 8
@TRAVEL_FUNCBOB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_InitTravelFlagFromType() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @MAX_TRAVELTYPES, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i8*, i8** @TFL_INVALID, align 8
  %8 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  store i8* %7, i8** %11, align 8
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %2

15:                                               ; preds = %2
  %16 = load i8*, i8** @TFL_INVALID, align 8
  %17 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %18 = load i64, i64* @TRAVEL_INVALID, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** @TFL_WALK, align 8
  %21 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %22 = load i64, i64* @TRAVEL_WALK, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** @TFL_CROUCH, align 8
  %25 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %26 = load i64, i64* @TRAVEL_CROUCH, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** @TFL_BARRIERJUMP, align 8
  %29 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %30 = load i64, i64* @TRAVEL_BARRIERJUMP, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** @TFL_JUMP, align 8
  %33 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %34 = load i64, i64* @TRAVEL_JUMP, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** @TFL_LADDER, align 8
  %37 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %38 = load i64, i64* @TRAVEL_LADDER, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @TFL_WALKOFFLEDGE, align 8
  %41 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %42 = load i64, i64* @TRAVEL_WALKOFFLEDGE, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @TFL_SWIM, align 8
  %45 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %46 = load i64, i64* @TRAVEL_SWIM, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** @TFL_WATERJUMP, align 8
  %49 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %50 = load i64, i64* @TRAVEL_WATERJUMP, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** @TFL_TELEPORT, align 8
  %53 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %54 = load i64, i64* @TRAVEL_TELEPORT, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @TFL_ELEVATOR, align 8
  %57 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %58 = load i64, i64* @TRAVEL_ELEVATOR, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** @TFL_ROCKETJUMP, align 8
  %61 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %62 = load i64, i64* @TRAVEL_ROCKETJUMP, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @TFL_BFGJUMP, align 8
  %65 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %66 = load i64, i64* @TRAVEL_BFGJUMP, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** @TFL_GRAPPLEHOOK, align 8
  %69 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %70 = load i64, i64* @TRAVEL_GRAPPLEHOOK, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  store i8* %68, i8** %71, align 8
  %72 = load i8*, i8** @TFL_DOUBLEJUMP, align 8
  %73 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %74 = load i64, i64* @TRAVEL_DOUBLEJUMP, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8* %72, i8** %75, align 8
  %76 = load i8*, i8** @TFL_RAMPJUMP, align 8
  %77 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %78 = load i64, i64* @TRAVEL_RAMPJUMP, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  store i8* %76, i8** %79, align 8
  %80 = load i8*, i8** @TFL_STRAFEJUMP, align 8
  %81 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %82 = load i64, i64* @TRAVEL_STRAFEJUMP, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8* %80, i8** %83, align 8
  %84 = load i8*, i8** @TFL_JUMPPAD, align 8
  %85 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %86 = load i64, i64* @TRAVEL_JUMPPAD, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  store i8* %84, i8** %87, align 8
  %88 = load i8*, i8** @TFL_FUNCBOB, align 8
  %89 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %90 = load i64, i64* @TRAVEL_FUNCBOB, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8* %88, i8** %91, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
