; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_consolecmds.c_CG_InitConsoleCommands.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_consolecmds.c_CG_InitConsoleCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@commands = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"say_team\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"give\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"god\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"notarget\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"noclip\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"team\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"follow\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"follownext\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"followprev\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"levelshot\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"addbot\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"setviewpos\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"callvote\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"vote\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"callteamvote\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"teamvote\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"teamtask\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"loaddefered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_InitConsoleCommands() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %15, %0
  %3 = load i32, i32* %1, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %5 = call i32 @ARRAY_LEN(%struct.TYPE_3__* %4)
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @trap_AddCommand(i8* %13)
  br label %15

15:                                               ; preds = %7
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %2

18:                                               ; preds = %2
  %19 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %28 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %29 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %30 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %31 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %32 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %33 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %34 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %35 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %36 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %37 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %38 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %39 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %40 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %41 = call i32 @trap_AddCommand(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ARRAY_LEN(%struct.TYPE_3__*) #1

declare dso_local i32 @trap_AddCommand(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
