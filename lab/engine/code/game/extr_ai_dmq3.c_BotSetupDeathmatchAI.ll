; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotSetupDeathmatchAI.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotSetupDeathmatchAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@gametype = common dso_local global i64 0, align 8
@bot_rocketjump = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bot_rocketjump\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@bot_grapple = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"bot_grapple\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@bot_fastchat = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"bot_fastchat\00", align 1
@bot_nochat = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"bot_nochat\00", align 1
@bot_testrchat = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"bot_testrchat\00", align 1
@bot_challenge = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"bot_challenge\00", align 1
@bot_predictobstacles = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"bot_predictobstacles\00", align 1
@g_spSkill = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"g_spSkill\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@GT_CTF = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"Red Flag\00", align 1
@ctf_redflag = common dso_local global i32 0, align 4
@PRT_WARNING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"CTF without Red Flag\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Blue Flag\00", align 1
@ctf_blueflag = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"CTF without Blue Flag\0A\00", align 1
@max_bspmodelindex = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@GT_OBELISK = common dso_local global i64 0, align 8
@blueobelisk = common dso_local global i32 0, align 4
@ctf_neutralflag = common dso_local global i32 0, align 4
@neutralobelisk = common dso_local global i32 0, align 4
@redobelisk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotSetupDeathmatchAI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = call i64 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %4, i64* @gametype, align 8
  %5 = call i32 @trap_Cvar_Register(i32* @bot_rocketjump, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %6 = call i32 @trap_Cvar_Register(i32* @bot_grapple, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %7 = call i32 @trap_Cvar_Register(i32* @bot_fastchat, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %8 = call i32 @trap_Cvar_Register(i32* @bot_nochat, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %9 = call i32 @trap_Cvar_Register(i32* @bot_testrchat, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %10 = call i32 @trap_Cvar_Register(i32* @bot_challenge, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %11 = call i32 @trap_Cvar_Register(i32* @bot_predictobstacles, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %12 = call i32 @trap_Cvar_Register(i32* @g_spSkill, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %13 = load i64, i64* @gametype, align 8
  %14 = load i64, i64* @GT_CTF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %0
  %17 = call i64 @trap_BotGetLevelItemGoal(i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32* @ctf_redflag)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @PRT_WARNING, align 4
  %21 = call i32 @BotAI_Print(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16
  %23 = call i64 @trap_BotGetLevelItemGoal(i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* @ctf_blueflag)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @PRT_WARNING, align 4
  %27 = call i32 @BotAI_Print(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %0
  store i32 0, i32* @max_bspmodelindex, align 4
  %30 = call i32 @trap_AAS_NextBSPEntity(i32 0)
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %56, %29
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load i32, i32* %1, align 4
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %37 = call i32 @trap_AAS_ValueForBSPEpairKey(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %36, i32 128)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %56

40:                                               ; preds = %34
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %42 = load i8, i8* %41, align 16
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 42
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i32 @atoi(i8* %47)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @max_bspmodelindex, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %2, align 4
  store i32 %53, i32* @max_bspmodelindex, align 4
  br label %54

54:                                               ; preds = %52, %45
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @trap_AAS_NextBSPEntity(i32 %57)
  store i32 %58, i32* %1, align 4
  br label %31

59:                                               ; preds = %31
  %60 = call i32 (...) @BotInitWaypoints()
  ret void
}

declare dso_local i64 @trap_Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @trap_Cvar_Register(i32*, i8*, i8*, i32) #1

declare dso_local i64 @trap_BotGetLevelItemGoal(i32, i8*, i32*) #1

declare dso_local i32 @BotAI_Print(i32, i8*) #1

declare dso_local i32 @trap_AAS_NextBSPEntity(i32) #1

declare dso_local i32 @trap_AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @BotInitWaypoints(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
