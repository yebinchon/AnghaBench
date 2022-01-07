; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotSetupGoalAI.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotSetupGoalAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@g_gametype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"itemconfig\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"items.c\00", align 1
@itemconfig = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"couldn't load item config\0A\00", align 1
@BLERR_CANNOTLOADITEMCONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"droppedweight\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@droppedweight = common dso_local global i32 0, align 4
@BLERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotSetupGoalAI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i32 @LibVarValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %3, i32* @g_gametype, align 4
  %4 = call i8* @LibVarString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @LoadItemConfig(i8* %5)
  store i32 %6, i32* @itemconfig, align 4
  %7 = load i32, i32* @itemconfig, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %11 = load i32, i32* @PRT_FATAL, align 4
  %12 = call i32 %10(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32, i32* @BLERR_CANNOTLOADITEMCONFIG, align 4
  store i32 %13, i32* %1, align 4
  br label %17

14:                                               ; preds = %0
  %15 = call i32 @LibVar(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %15, i32* @droppedweight, align 4
  %16 = load i32, i32* @BLERR_NOERROR, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @LibVarValue(i8*, i8*) #1

declare dso_local i8* @LibVarString(i8*, i8*) #1

declare dso_local i32 @LoadItemConfig(i8*) #1

declare dso_local i32 @LibVar(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
