; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_Event.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@g_arenaservers = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"ui_browserMaster\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ui_browserGameType\00", align 1
@g_gametype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ui_browserSortKey\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ui_browserShowFull\00", align 1
@g_fullservers = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ui_browserShowEmpty\00", align 1
@g_emptyservers = common dso_local global i32 0, align 4
@QM_GOTFOCUS = common dso_local global i32 0, align 4
@K_UPARROW = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Enable Punkbuster?\00", align 1
@UI_CENTER = common dso_local global i32 0, align 4
@UI_INVERSE = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@Punkbuster_ConfirmEnable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Disable Punkbuster?\00", align 1
@Punkbuster_ConfirmDisable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ArenaServers_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_15__*
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @QM_ACTIVATED, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 138
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %94

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %94 [
    i32 137, label %19
    i32 139, label %24
    i32 129, label %29
    i32 130, label %35
    i32 131, label %40
    i32 138, label %45
    i32 132, label %52
    i32 133, label %55
    i32 142, label %58
    i32 135, label %62
    i32 128, label %64
    i32 140, label %66
    i32 141, label %69
    i32 134, label %71
    i32 136, label %74
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 6, i32 0), align 4
  %21 = call i32 @ArenaServers_SetType(i32 %20)
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 6, i32 0), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 6, i32 0), align 4
  %23 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %94

24:                                               ; preds = %17
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 5, i32 0), align 4
  %26 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 5, i32 0), align 4
  store i32 %27, i32* @g_gametype, align 4
  %28 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %94

29:                                               ; preds = %17
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 4, i32 0), align 4
  %31 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 4, i32 0), align 4
  %33 = call i32 @ArenaServers_Sort(i32 %32)
  %34 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %94

35:                                               ; preds = %17
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 3, i32 0), align 4
  %37 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 3, i32 0), align 4
  store i32 %38, i32* @g_fullservers, align 4
  %39 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %94

40:                                               ; preds = %17
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 2, i32 0), align 4
  %42 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 2, i32 0), align 4
  store i32 %43, i32* @g_emptyservers, align 4
  %44 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %94

45:                                               ; preds = %17
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @QM_GOTFOCUS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (...) @ArenaServers_UpdatePicture()
  br label %51

51:                                               ; preds = %49, %45
  br label %94

52:                                               ; preds = %17
  %53 = load i32, i32* @K_UPARROW, align 4
  %54 = call i32 @ScrollList_Key(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 1), i32 %53)
  br label %94

55:                                               ; preds = %17
  %56 = load i32, i32* @K_DOWNARROW, align 4
  %57 = call i32 @ScrollList_Key(i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 1), i32 %56)
  br label %94

58:                                               ; preds = %17
  %59 = call i32 (...) @ArenaServers_StopRefresh()
  %60 = call i32 (...) @ArenaServers_SaveChanges()
  %61 = call i32 (...) @UI_PopMenu()
  br label %94

62:                                               ; preds = %17
  %63 = call i32 (...) @ArenaServers_StartRefresh()
  br label %94

64:                                               ; preds = %17
  %65 = call i32 (...) @UI_SpecifyServerMenu()
  br label %94

66:                                               ; preds = %17
  %67 = load i32, i32* @qtrue, align 4
  %68 = call i32 @UI_StartServerMenu(i32 %67)
  br label %94

69:                                               ; preds = %17
  %70 = call i32 (...) @ArenaServers_Go()
  br label %94

71:                                               ; preds = %17
  %72 = call i32 (...) @ArenaServers_Remove()
  %73 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %94

74:                                               ; preds = %17
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_arenaservers, i32 0, i32 0, i32 0), align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* @UI_CENTER, align 4
  %79 = load i32, i32* @UI_INVERSE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @UI_SMALLFONT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @Punkbuster_ConfirmEnable, align 4
  %84 = call i32 @UI_ConfirmMenu_Style(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %82, i32 0, i32 %83)
  br label %93

85:                                               ; preds = %74
  %86 = load i32, i32* @UI_CENTER, align 4
  %87 = load i32, i32* @UI_INVERSE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @UI_SMALLFONT, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @Punkbuster_ConfirmDisable, align 4
  %92 = call i32 @UI_ConfirmMenu_Style(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %90, i32 0, i32 %91)
  br label %93

93:                                               ; preds = %85, %77
  br label %94

94:                                               ; preds = %16, %17, %93, %71, %69, %66, %64, %62, %58, %55, %52, %51, %40, %35, %29, %24, %19
  ret void
}

declare dso_local i32 @ArenaServers_SetType(i32) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @ArenaServers_UpdateMenu(...) #1

declare dso_local i32 @ArenaServers_Sort(i32) #1

declare dso_local i32 @ArenaServers_UpdatePicture(...) #1

declare dso_local i32 @ScrollList_Key(i32*, i32) #1

declare dso_local i32 @ArenaServers_StopRefresh(...) #1

declare dso_local i32 @ArenaServers_SaveChanges(...) #1

declare dso_local i32 @UI_PopMenu(...) #1

declare dso_local i32 @ArenaServers_StartRefresh(...) #1

declare dso_local i32 @UI_SpecifyServerMenu(...) #1

declare dso_local i32 @UI_StartServerMenu(i32) #1

declare dso_local i32 @ArenaServers_Go(...) #1

declare dso_local i32 @ArenaServers_Remove(...) #1

declare dso_local i32 @UI_ConfirmMenu_Style(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
