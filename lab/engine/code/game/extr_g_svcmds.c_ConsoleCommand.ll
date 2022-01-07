; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_svcmds.c_ConsoleCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_svcmds.c_ConsoleCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"entitylist\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"forceteam\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"game_memory\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"addbot\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"botlist\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"abort_podium\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"addip\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"removeip\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"listip\00", align 1
@EXEC_NOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"g_banIPs\0A\00", align 1
@g_dedicated = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"print \22server: %s\0A\22\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConsoleCommand() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = trunc i64 %6 to i32
  %10 = call i32 @trap_Argv(i32 0, i8* %8, i32 %9)
  %11 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = call i32 (...) @Svcmd_EntityList_f()
  %15 = load i32, i32* @qtrue, align 4
  store i32 %15, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

16:                                               ; preds = %0
  %17 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i32 (...) @Svcmd_ForceTeam_f()
  %21 = load i32, i32* @qtrue, align 4
  store i32 %21, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

22:                                               ; preds = %16
  %23 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 (...) @Svcmd_GameMem_f()
  %27 = load i32, i32* @qtrue, align 4
  store i32 %27, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

28:                                               ; preds = %22
  %29 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 (...) @Svcmd_AddBot_f()
  %33 = load i32, i32* @qtrue, align 4
  store i32 %33, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

34:                                               ; preds = %28
  %35 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 (...) @Svcmd_BotList_f()
  %39 = load i32, i32* @qtrue, align 4
  store i32 %39, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

40:                                               ; preds = %34
  %41 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 (...) @Svcmd_AbortPodium_f()
  %45 = load i32, i32* @qtrue, align 4
  store i32 %45, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

46:                                               ; preds = %40
  %47 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = call i32 (...) @Svcmd_AddIP_f()
  %51 = load i32, i32* @qtrue, align 4
  store i32 %51, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

52:                                               ; preds = %46
  %53 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 (...) @Svcmd_RemoveIP_f()
  %57 = load i32, i32* @qtrue, align 4
  store i32 %57, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

58:                                               ; preds = %52
  %59 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @EXEC_NOW, align 4
  %63 = call i32 @trap_SendConsoleCommand(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %64 = load i32, i32* @qtrue, align 4
  store i32 %64, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

65:                                               ; preds = %58
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_dedicated, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = call i64 @Q_stricmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = call i32 @ConcatArgs(i32 1)
  %73 = call i32 @va(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %72)
  %74 = call i32 @trap_SendServerCommand(i32 -1, i32 %73)
  %75 = load i32, i32* @qtrue, align 4
  store i32 %75, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

76:                                               ; preds = %68
  %77 = call i32 @ConcatArgs(i32 0)
  %78 = call i32 @va(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %77)
  %79 = call i32 @trap_SendServerCommand(i32 -1, i32 %78)
  %80 = load i32, i32* @qtrue, align 4
  store i32 %80, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

81:                                               ; preds = %65
  %82 = load i32, i32* @qfalse, align 4
  store i32 %82, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %76, %71, %61, %55, %49, %43, %37, %31, %25, %19, %13
  %84 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Svcmd_EntityList_f(...) #2

declare dso_local i32 @Svcmd_ForceTeam_f(...) #2

declare dso_local i32 @Svcmd_GameMem_f(...) #2

declare dso_local i32 @Svcmd_AddBot_f(...) #2

declare dso_local i32 @Svcmd_BotList_f(...) #2

declare dso_local i32 @Svcmd_AbortPodium_f(...) #2

declare dso_local i32 @Svcmd_AddIP_f(...) #2

declare dso_local i32 @Svcmd_RemoveIP_f(...) #2

declare dso_local i32 @trap_SendConsoleCommand(i32, i8*) #2

declare dso_local i32 @trap_SendServerCommand(i32, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @ConcatArgs(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
