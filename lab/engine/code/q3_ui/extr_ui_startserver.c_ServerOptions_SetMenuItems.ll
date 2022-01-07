; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_ServerOptions_SetMenuItems.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_ServerOptions_SetMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i8*, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { i32 }

@ServerOptions_SetMenuItems.picname = internal global [64 x i8] zeroinitializer, align 16
@MAX_NAMELENGTH = common dso_local global i32 0, align 4
@s_serveroptions = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ui_ffa_fraglimit\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ui_ffa_timelimit\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ui_tourney_fraglimit\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ui_tourney_timelimit\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ui_team_fraglimit\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ui_team_timelimit\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ui_team_friendly\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ui_ctf_capturelimit\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ui_ctf_timelimit\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ui_ctf_friendly\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"sv_hostname\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"sv_pure\00", align 1
@s_startserver = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"levelshots/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerOptions_SetMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerOptions_SetMenuItems() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @MAX_NAMELENGTH, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 0), align 8
  switch i32 %8, label %10 [
    i32 130, label %9
    i32 128, label %25
    i32 129, label %40
    i32 131, label %58
  ]

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %0, %9
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 8, i32 0, i32 0), align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i64 @Com_Clamp(i32 0, i32 999, i32 %14)
  %16 = trunc i64 %15 to i32
  %17 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %13, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 6, i32 0, i32 0), align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i64 @Com_Clamp(i32 0, i32 999, i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %20, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %76

25:                                               ; preds = %0
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 8, i32 0, i32 0), align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i64 @Com_Clamp(i32 0, i32 999, i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %28, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 6, i32 0, i32 0), align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i64 @Com_Clamp(i32 0, i32 999, i32 %36)
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %35, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %76

40:                                               ; preds = %0
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 8, i32 0, i32 0), align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %45 = call i64 @Com_Clamp(i32 0, i32 999, i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %43, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 6, i32 0, i32 0), align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i64 @Com_Clamp(i32 0, i32 999, i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %50, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %56 = call i64 @Com_Clamp(i32 0, i32 1, i32 %55)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 5, i32 0), align 8
  br label %76

58:                                               ; preds = %0
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 7, i32 0, i32 0), align 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %63 = call i64 @Com_Clamp(i32 0, i32 100, i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %61, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 6, i32 0, i32 0), align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %70 = call i64 @Com_Clamp(i32 0, i32 999, i32 %69)
  %71 = trunc i64 %70 to i32
  %72 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %68, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %74 = call i64 @Com_Clamp(i32 0, i32 1, i32 %73)
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 5, i32 0), align 8
  br label %76

76:                                               ; preds = %58, %40, %25, %10
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 4, i32 0, i32 0), align 8
  %78 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %79 = call i32 @Q_strncpyz(i8* %77, i32 %78, i32 8)
  %80 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %81 = call i64 @Com_Clamp(i32 0, i32 1, i32 %80)
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 3, i32 0), align 8
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_startserver, i32 0, i32 2), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_startserver, i32 0, i32 0), align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @UI_GetArenaInfoByNumber(i32 %85)
  store i8* %86, i8** %3, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @Info_ValueForKey(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %89 = load i32, i32* @MAX_NAMELENGTH, align 4
  %90 = call i32 @Q_strncpyz(i8* %7, i32 %88, i32 %89)
  %91 = call i32 @Q_strupr(i8* %7)
  %92 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ServerOptions_SetMenuItems.picname, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %7)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ServerOptions_SetMenuItems.picname, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 2, i32 0, i32 0), align 8
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 1), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_startserver, i32 0, i32 1, i32 0), align 8
  %95 = call i32 @strcpy(i8* %93, i32 %94)
  %96 = load i8*, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @s_serveroptions, i32 0, i32 1), align 8
  %97 = call i32 @Q_strupr(i8* %96)
  %98 = call i32 (...) @ServerOptions_InitPlayerItems()
  %99 = call i32 (...) @ServerOptions_SetPlayerItems()
  %100 = call i32 (...) @ServerOptions_InitBotNames()
  %101 = call i32 (...) @ServerOptions_SetPlayerItems()
  %102 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @Com_Clamp(i32, i32, i32) #2

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @UI_Cvar_VariableString(i8*) #2

declare dso_local i8* @UI_GetArenaInfoByNumber(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Q_strupr(i8*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @ServerOptions_InitPlayerItems(...) #2

declare dso_local i32 @ServerOptions_SetPlayerItems(...) #2

declare dso_local i32 @ServerOptions_InitBotNames(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
