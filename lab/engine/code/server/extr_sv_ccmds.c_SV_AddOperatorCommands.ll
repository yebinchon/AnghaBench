; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_AddOperatorCommands.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_AddOperatorCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@SV_AddOperatorCommands.initialized = internal global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1
@SV_Heartbeat_f = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"kick\00", align 1
@SV_Kick_f = common dso_local global i32 0, align 4
@com_standalone = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"banUser\00", align 1
@SV_Ban_f = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"banClient\00", align 1
@SV_BanNum_f = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"kickbots\00", align 1
@SV_KickBots_f = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"kickall\00", align 1
@SV_KickAll_f = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"kicknum\00", align 1
@SV_KickNum_f = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"clientkick\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@SV_Status_f = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"serverinfo\00", align 1
@SV_Serverinfo_f = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"systeminfo\00", align 1
@SV_Systeminfo_f = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"dumpuser\00", align 1
@SV_DumpUser_f = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"map_restart\00", align 1
@SV_MapRestart_f = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"sectorlist\00", align 1
@SV_SectorList_f = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@SV_Map_f = common dso_local global i32 0, align 4
@SV_CompleteMapName = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"devmap\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"spmap\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"spdevmap\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"killserver\00", align 1
@SV_KillServer_f = common dso_local global i32 0, align 4
@com_dedicated = common dso_local global %struct.TYPE_4__* null, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@SV_ConSay_f = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@SV_ConTell_f = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"sayto\00", align 1
@SV_ConSayto_f = common dso_local global i32 0, align 4
@SV_CompletePlayerName = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"rehashbans\00", align 1
@SV_RehashBans_f = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"listbans\00", align 1
@SV_ListBans_f = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"banaddr\00", align 1
@SV_BanAddr_f = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"exceptaddr\00", align 1
@SV_ExceptAddr_f = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"bandel\00", align 1
@SV_BanDel_f = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"exceptdel\00", align 1
@SV_ExceptDel_f = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"flushbans\00", align 1
@SV_FlushBans_f = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_AddOperatorCommands() #0 {
  %1 = load i64, i64* @SV_AddOperatorCommands.initialized, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %86

4:                                                ; preds = %0
  %5 = load i64, i64* @qtrue, align 8
  store i64 %5, i64* @SV_AddOperatorCommands.initialized, align 8
  %6 = load i32, i32* @SV_Heartbeat_f, align 4
  %7 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @SV_Kick_f, align 4
  %9 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_standalone, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @SV_Ban_f, align 4
  %16 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @SV_BanNum_f, align 4
  %18 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @SV_KickBots_f, align 4
  %21 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @SV_KickAll_f, align 4
  %23 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @SV_KickNum_f, align 4
  %25 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @SV_KickNum_f, align 4
  %27 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @SV_Status_f, align 4
  %29 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @SV_Serverinfo_f, align 4
  %31 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @SV_Systeminfo_f, align 4
  %33 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @SV_DumpUser_f, align 4
  %35 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @SV_MapRestart_f, align 4
  %37 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @SV_SectorList_f, align 4
  %39 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @SV_Map_f, align 4
  %41 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @SV_CompleteMapName, align 4
  %43 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @SV_Map_f, align 4
  %45 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @SV_CompleteMapName, align 4
  %47 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @SV_Map_f, align 4
  %49 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @SV_CompleteMapName, align 4
  %51 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @SV_Map_f, align 4
  %53 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @SV_CompleteMapName, align 4
  %55 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @SV_KillServer_f, align 4
  %57 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_dedicated, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %19
  %63 = load i32, i32* @SV_ConSay_f, align 4
  %64 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @SV_ConTell_f, align 4
  %66 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @SV_ConSayto_f, align 4
  %68 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @SV_CompletePlayerName, align 4
  %70 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %62, %19
  %72 = load i32, i32* @SV_RehashBans_f, align 4
  %73 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @SV_ListBans_f, align 4
  %75 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @SV_BanAddr_f, align 4
  %77 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @SV_ExceptAddr_f, align 4
  %79 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @SV_BanDel_f, align 4
  %81 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @SV_ExceptDel_f, align 4
  %83 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @SV_FlushBans_f, align 4
  %85 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %71, %3
  ret void
}

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

declare dso_local i32 @Cmd_SetCommandCompletionFunc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
