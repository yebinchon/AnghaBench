; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_SetType.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_SetType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64*, i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@g_servertype = common dso_local global i32 0, align 4
@UIAS_NUM_SOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sv_master%d\00", align 1
@QMF_INACTIVE = common dso_local global i32 0, align 4
@QMF_HIDDEN = common dso_local global i32 0, align 4
@g_arenaservers = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@g_localserverlist = common dso_local global i32 0, align 4
@g_numlocalservers = common dso_local global i64 0, align 8
@MAX_LOCALSERVERS = common dso_local global i32 0, align 4
@g_globalserverlist = common dso_local global i32* null, align 8
@g_numglobalservers = common dso_local global i64* null, align 8
@MAX_GLOBALSERVERS = common dso_local global i32 0, align 4
@g_favoriteserverlist = common dso_local global i32 0, align 4
@g_numfavoriteservers = common dso_local global i64 0, align 8
@MAX_FAVORITESERVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"hit refresh to update\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArenaServers_SetType(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 1
  %4 = alloca [11 x i8], align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @ArenaServers_StopRefresh()
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 133
  br i1 %8, label %9, label %51

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 129
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @g_servertype, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @g_servertype, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @UIAS_NUM_SOURCES, align 4
  %21 = srem i32 %19, %20
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %12
  store i32 1, i32* %5, align 4
  br label %25

24:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %2, align 4
  %28 = icmp sge i32 %27, 133
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = icmp sle i32 %30, 129
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %50

34:                                               ; preds = %32
  %35 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %36 = load i32, i32* %2, align 4
  %37 = sub nsw i32 %36, 134
  %38 = call i32 @Com_sprintf(i8* %35, i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %41 = call i32 @trap_Cvar_VariableStringBuffer(i8* %39, i8* %40, i32 2)
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %50

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %2, align 4
  br label %26

50:                                               ; preds = %45, %32
  br label %51

51:                                               ; preds = %50, %9, %1
  %52 = load i32, i32* %2, align 4
  store i32 %52, i32* @g_servertype, align 4
  %53 = load i32, i32* %2, align 4
  switch i32 %53, label %54 [
    i32 128, label %55
    i32 134, label %63
    i32 133, label %63
    i32 132, label %63
    i32 131, label %63
    i32 130, label %63
    i32 129, label %63
    i32 135, label %81
  ]

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %51, %54
  %56 = load i32, i32* @QMF_INACTIVE, align 4
  %57 = load i32, i32* @QMF_HIDDEN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 8
  %60 = or i32 %59, %58
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 8
  %61 = load i32, i32* @g_localserverlist, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 5), align 4
  store i64* @g_numlocalservers, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %62 = load i32, i32* @MAX_LOCALSERVERS, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 4), align 8
  br label %90

63:                                               ; preds = %51, %51, %51, %51, %51, %51
  %64 = load i32, i32* @QMF_INACTIVE, align 4
  %65 = load i32, i32* @QMF_HIDDEN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 8
  %68 = or i32 %67, %66
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 8
  %69 = load i32*, i32** @g_globalserverlist, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sub nsw i32 %70, 134
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 5), align 4
  %75 = load i64*, i64** @g_numglobalservers, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sub nsw i32 %76, 134
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64* %79, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %80 = load i32, i32* @MAX_GLOBALSERVERS, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 4), align 8
  br label %90

81:                                               ; preds = %51
  %82 = load i32, i32* @QMF_INACTIVE, align 4
  %83 = load i32, i32* @QMF_HIDDEN, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 8
  %87 = and i32 %86, %85
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 6, i32 0, i32 0), align 8
  %88 = load i32, i32* @g_favoriteserverlist, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 5), align 4
  store i64* @g_numfavoriteservers, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %89 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 4), align 8
  br label %90

90:                                               ; preds = %81, %63, %55
  %91 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = call i32 (...) @ArenaServers_StartRefresh()
  br label %104

96:                                               ; preds = %90
  %97 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 3), align 8
  %99 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 1), align 8
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 2), align 8
  %101 = call i32 (...) @ArenaServers_UpdateMenu()
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_arenaservers, i32 0, i32 0, i32 0), align 8
  %103 = call i32 @strcpy(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %96, %94
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @ArenaServers_StopRefresh(...) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i32 @ArenaServers_StartRefresh(...) #1

declare dso_local i32 @ArenaServers_UpdateMenu(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
