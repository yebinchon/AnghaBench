; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_file.c_AAS_ShowTotals.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_file.c_AAS_ShowTotals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"numvertexes = %d\0D\0A\00", align 1
@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"numplanes = %d\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"numedges = %d\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"edgeindexsize = %d\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"numfaces = %d\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"faceindexsize = %d\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"numareas = %d\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"numareasettings = %d\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"reachabilitysize = %d\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"numnodes = %d\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"numportals = %d\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"portalindexsize = %d\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"numclusters = %d\0D\0A\00", align 1
@TRAVEL_WALK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"walk\00", align 1
@TRAVEL_CROUCH = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"crouch\00", align 1
@TRAVEL_BARRIERJUMP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"barrier jump\00", align 1
@TRAVEL_JUMP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@TRAVEL_LADDER = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"ladder\00", align 1
@TRAVEL_WALKOFFLEDGE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"walk off ledge\00", align 1
@TRAVEL_SWIM = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"swim\00", align 1
@TRAVEL_WATERJUMP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"water jump\00", align 1
@TRAVEL_TELEPORT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"teleport\00", align 1
@TRAVEL_ELEVATOR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"elevator\00", align 1
@TRAVEL_ROCKETJUMP = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"rocket jump\00", align 1
@TRAVEL_BFGJUMP = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"bfg jump\00", align 1
@TRAVEL_GRAPPLEHOOK = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"grapple hook\00", align 1
@TRAVEL_DOUBLEJUMP = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"double jump\00", align 1
@TRAVEL_RAMPJUMP = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"ramp jump\00", align 1
@TRAVEL_STRAFEJUMP = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"strafe jump\00", align 1
@TRAVEL_JUMPPAD = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"jump pad\00", align 1
@TRAVEL_FUNCBOB = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"func bob\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_ShowTotals() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 12), align 4
  %2 = call i32 @Log_Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 11), align 4
  %4 = call i32 @Log_Print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 10), align 4
  %6 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 9), align 4
  %8 = call i32 @Log_Print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 8), align 4
  %10 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 7), align 4
  %12 = call i32 @Log_Print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 6), align 4
  %14 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 5), align 4
  %16 = call i32 @Log_Print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 4), align 4
  %18 = call i32 @Log_Print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 3), align 4
  %20 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 2), align 4
  %22 = call i32 @Log_Print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 4
  %24 = call i32 @Log_Print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 4
  %26 = call i32 @Log_Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @TRAVEL_WALK, align 4
  %28 = call i32 @AAS_ShowNumReachabilities(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %29 = load i32, i32* @TRAVEL_CROUCH, align 4
  %30 = call i32 @AAS_ShowNumReachabilities(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %31 = load i32, i32* @TRAVEL_BARRIERJUMP, align 4
  %32 = call i32 @AAS_ShowNumReachabilities(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %33 = load i32, i32* @TRAVEL_JUMP, align 4
  %34 = call i32 @AAS_ShowNumReachabilities(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %35 = load i32, i32* @TRAVEL_LADDER, align 4
  %36 = call i32 @AAS_ShowNumReachabilities(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %37 = load i32, i32* @TRAVEL_WALKOFFLEDGE, align 4
  %38 = call i32 @AAS_ShowNumReachabilities(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %39 = load i32, i32* @TRAVEL_SWIM, align 4
  %40 = call i32 @AAS_ShowNumReachabilities(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %41 = load i32, i32* @TRAVEL_WATERJUMP, align 4
  %42 = call i32 @AAS_ShowNumReachabilities(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %43 = load i32, i32* @TRAVEL_TELEPORT, align 4
  %44 = call i32 @AAS_ShowNumReachabilities(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %45 = load i32, i32* @TRAVEL_ELEVATOR, align 4
  %46 = call i32 @AAS_ShowNumReachabilities(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %47 = load i32, i32* @TRAVEL_ROCKETJUMP, align 4
  %48 = call i32 @AAS_ShowNumReachabilities(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %49 = load i32, i32* @TRAVEL_BFGJUMP, align 4
  %50 = call i32 @AAS_ShowNumReachabilities(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %51 = load i32, i32* @TRAVEL_GRAPPLEHOOK, align 4
  %52 = call i32 @AAS_ShowNumReachabilities(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %53 = load i32, i32* @TRAVEL_DOUBLEJUMP, align 4
  %54 = call i32 @AAS_ShowNumReachabilities(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %55 = load i32, i32* @TRAVEL_RAMPJUMP, align 4
  %56 = call i32 @AAS_ShowNumReachabilities(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %57 = load i32, i32* @TRAVEL_STRAFEJUMP, align 4
  %58 = call i32 @AAS_ShowNumReachabilities(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  %59 = load i32, i32* @TRAVEL_JUMPPAD, align 4
  %60 = call i32 @AAS_ShowNumReachabilities(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  %61 = load i32, i32* @TRAVEL_FUNCBOB, align 4
  %62 = call i32 @AAS_ShowNumReachabilities(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Log_Print(i8*, i32) #1

declare dso_local i32 @AAS_ShowNumReachabilities(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
