; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotSetupMoveAI.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotSetupMoveAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"sv_step\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"18\00", align 1
@sv_maxstep = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"sv_maxbarrier\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@sv_maxbarrier = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"sv_gravity\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"800\00", align 1
@sv_gravity = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"weapindex_rocketlauncher\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@weapindex_rocketlauncher = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"weapindex_bfg10k\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@weapindex_bfg10k = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"weapindex_grapple\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@weapindex_grapple = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"entitytypemissile\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@entitytypemissile = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"offhandgrapple\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@offhandgrapple = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c"cmd_grappleon\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"grappleon\00", align 1
@cmd_grappleon = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"cmd_grappleoff\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"grappleoff\00", align 1
@cmd_grappleoff = common dso_local global i8* null, align 8
@BLERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotSetupMoveAI() #0 {
  %1 = call i32 (...) @BotSetBrushModelTypes()
  %2 = call i8* @LibVar(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %2, i8** @sv_maxstep, align 8
  %3 = call i8* @LibVar(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %3, i8** @sv_maxbarrier, align 8
  %4 = call i8* @LibVar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %4, i8** @sv_gravity, align 8
  %5 = call i8* @LibVar(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %5, i8** @weapindex_rocketlauncher, align 8
  %6 = call i8* @LibVar(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %6, i8** @weapindex_bfg10k, align 8
  %7 = call i8* @LibVar(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i8* %7, i8** @weapindex_grapple, align 8
  %8 = call i8* @LibVar(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i8* %8, i8** @entitytypemissile, align 8
  %9 = call i8* @LibVar(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i8* %9, i8** @offhandgrapple, align 8
  %10 = call i8* @LibVar(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  store i8* %10, i8** @cmd_grappleon, align 8
  %11 = call i8* @LibVar(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store i8* %11, i8** @cmd_grappleoff, align 8
  %12 = load i32, i32* @BLERR_NOERROR, align 4
  ret i32 %12
}

declare dso_local i32 @BotSetBrushModelTypes(...) #1

declare dso_local i8* @LibVar(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
