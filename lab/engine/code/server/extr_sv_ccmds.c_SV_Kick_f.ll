; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_Kick_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_Kick_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@com_sv_running = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Server is not running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Usage: kick <player name>\0Akick all = kick everyone\0Akick allbots = kick all bots\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@svs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@sv_maxclients = common dso_local global %struct.TYPE_13__* null, align 8
@NA_LOOPBACK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"was kicked\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"allbots\00", align 1
@NA_BOT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Cannot kick host player\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_Kick_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_Kick_f() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_14__*, %struct.TYPE_14__** @com_sv_running, align 8
  %4 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %114

9:                                                ; preds = %0
  %10 = call i32 (...) @Cmd_Argc()
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @Com_Printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  br label %114

14:                                               ; preds = %9
  %15 = call %struct.TYPE_11__* (...) @SV_GetPlayerByHandle()
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %1, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %98, label %18

18:                                               ; preds = %14
  %19 = call i32 @Cmd_Argv(i32 1)
  %20 = call i32 @Q_stricmp(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 1), align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %1, align 8
  br label %24

24:                                               ; preds = %51, %22
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sv_maxclients, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %51

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NA_LOOPBACK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %47 = call i32 @SV_DropClient(%struct.TYPE_11__* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 0), align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %45, %44, %35
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 1
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %1, align 8
  br label %24

56:                                               ; preds = %24
  br label %97

57:                                               ; preds = %18
  %58 = call i32 @Cmd_Argv(i32 1)
  %59 = call i32 @Q_stricmp(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %96, label %61

61:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 1), align 8
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %1, align 8
  br label %63

63:                                               ; preds = %90, %61
  %64 = load i32, i32* %2, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sv_maxclients, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %63
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %90

75:                                               ; preds = %69
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NA_BOT, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %90

84:                                               ; preds = %75
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %86 = call i32 @SV_DropClient(%struct.TYPE_11__* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 0), align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %84, %83, %74
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 1
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %1, align 8
  br label %63

95:                                               ; preds = %63
  br label %96

96:                                               ; preds = %95, %57
  br label %97

97:                                               ; preds = %96, %56
  br label %114

98:                                               ; preds = %14
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NA_LOOPBACK, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = call i32 @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %114

108:                                              ; preds = %98
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %110 = call i32 @SV_DropClient(%struct.TYPE_11__* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @svs, i32 0, i32 0), align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %108, %106, %97, %12, %7
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local %struct.TYPE_11__* @SV_GetPlayerByHandle(...) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
