; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_StartRefresh.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_StartRefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i64, i64, i64*, i64, i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i64 }

@g_arenaservers = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MAX_PINGREQUESTS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@g_servertype = common dso_local global i64 0, align 8
@UIAS_LOCAL = common dso_local global i64 0, align 8
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"localservers\0A\00", align 1
@UIAS_GLOBAL0 = common dso_local global i64 0, align 8
@UIAS_GLOBAL5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" ffa\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" team\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" tourney\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" ctf\00", align 1
@g_emptyservers = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c" empty\00", align 1
@g_fullservers = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c" full\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"debug_protocol\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"globalservers %d %s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"globalservers %d %d%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ArenaServers_StartRefresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_StartRefresh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 9), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 0), align 8
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = call i32 @memset(i32 %4, i32 0, i32 %8)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %24, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 8), align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @trap_LAN_ClearPing(i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load i32, i32* @qtrue, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 5), align 8
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 4), align 8
  store i64 0, i64* %29, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 3), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uis, i32 0, i32 0), align 8
  %31 = add nsw i64 %30, 5000
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 2), align 8
  %32 = call i32 (...) @ArenaServers_UpdateMenu()
  %33 = load i64, i64* @g_servertype, align 8
  %34 = load i64, i64* @UIAS_LOCAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EXEC_APPEND, align 4
  %38 = call i32 @trap_Cmd_ExecuteText(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %103

39:                                               ; preds = %27
  %40 = load i64, i64* @g_servertype, align 8
  %41 = load i64, i64* @UIAS_GLOBAL0, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %103

43:                                               ; preds = %39
  %44 = load i64, i64* @g_servertype, align 8
  %45 = load i64, i64* @UIAS_GLOBAL5, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %103

47:                                               ; preds = %43
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1, i32 0), align 4
  switch i32 %48, label %49 [
    i32 132, label %50
    i32 130, label %52
    i32 129, label %55
    i32 128, label %58
    i32 131, label %61
  ]

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %47, %49
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %51, align 16
  br label %64

52:                                               ; preds = %47
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %54 = call i32 @strcpy(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %64

55:                                               ; preds = %47
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %64

58:                                               ; preds = %47
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %60 = call i32 @strcpy(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %64

61:                                               ; preds = %47
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58, %55, %52, %50
  %65 = load i64, i64* @g_emptyservers, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %69 = call i32 @strcat(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i64, i64* @g_fullservers, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %75 = call i32 @strcat(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %70
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %77, align 16
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %79 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %78, i32 32)
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %81 = call i64 @strlen(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load i32, i32* @EXEC_APPEND, align 4
  %85 = load i64, i64* @g_servertype, align 8
  %86 = load i64, i64* @UIAS_GLOBAL0, align 8
  %87 = sub nsw i64 %85, %86
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %90 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %87, i8* %88, i8* %89)
  %91 = call i32 @trap_Cmd_ExecuteText(i32 %84, i8* %90)
  br label %102

92:                                               ; preds = %76
  %93 = load i32, i32* @EXEC_APPEND, align 4
  %94 = load i64, i64* @g_servertype, align 8
  %95 = load i64, i64* @UIAS_GLOBAL0, align 8
  %96 = sub nsw i64 %94, %95
  %97 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %100 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %96, i32 %98, i8* %99)
  %101 = call i32 @trap_Cmd_ExecuteText(i32 %93, i8* %100)
  br label %102

102:                                              ; preds = %92, %83
  br label %103

103:                                              ; preds = %36, %102, %43, %39
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @trap_LAN_ClearPing(i32) #1

declare dso_local i32 @ArenaServers_UpdateMenu(...) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @va(i8*, i64, ...) #1

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
