; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_specifyleague.c_SpecifyLeague_Event.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_specifyleague.c_SpecifyLeague_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@QM_GOTFOCUS = common dso_local global i32 0, align 4
@QM_ACTIVATED = common dso_local global i32 0, align 4
@s_specifyleague = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@K_UPARROW = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@QM_LOSTFOCUS = common dso_local global i32 0, align 4
@playername = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sv_leagueName\00", align 1
@league_table = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @SpecifyLeague_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpecifyLeague_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_9__*
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %60 [
    i32 130, label %11
    i32 128, label %17
    i32 131, label %25
    i32 129, label %33
    i32 132, label %47
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @QM_GOTFOCUS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %11
  br label %60

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @QM_ACTIVATED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @K_UPARROW, align 4
  %23 = call i32 @ScrollList_Key(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_specifyleague, i32 0, i32 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %17
  br label %60

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @QM_ACTIVATED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @K_DOWNARROW, align 4
  %31 = call i32 @ScrollList_Key(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_specifyleague, i32 0, i32 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  br label %60

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @QM_LOSTFOCUS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* @playername, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_specifyleague, i32 0, i32 1, i32 0, i32 0), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_specifyleague, i32 0, i32 1, i32 0, i32 0), align 8
  %41 = call i32 @strlen(i32 %40)
  %42 = call i32 @Q_strncmp(i32 %38, i32 %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @SpecifyLeague_GetList()
  br label %46

46:                                               ; preds = %44, %37, %33
  br label %60

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @QM_ACTIVATED, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @league_table, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @s_specifyleague, i32 0, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = call i32 (...) @UI_PopMenu()
  br label %59

59:                                               ; preds = %51, %47
  br label %60

60:                                               ; preds = %2, %59, %46, %32, %24, %16
  ret void
}

declare dso_local i32 @ScrollList_Key(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Q_strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @SpecifyLeague_GetList(...) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i32 @UI_PopMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
