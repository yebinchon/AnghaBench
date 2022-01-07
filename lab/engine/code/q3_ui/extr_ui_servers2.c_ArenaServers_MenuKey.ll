; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_MenuKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_MenuKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@K_SPACE = common dso_local global i32 0, align 4
@g_arenaservers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@menu_move_sound = common dso_local global i32 0, align 4
@K_DEL = common dso_local global i32 0, align 4
@K_KP_DEL = common dso_local global i32 0, align 4
@g_servertype = common dso_local global i64 0, align 8
@UIAS_FAVORITES = common dso_local global i64 0, align 8
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ArenaServers_MenuKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ArenaServers_MenuKey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @K_SPACE, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 2), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call i32 (...) @ArenaServers_StopRefresh()
  %12 = load i32, i32* @menu_move_sound, align 4
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %7, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @K_DEL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @K_KP_DEL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %13
  %22 = load i64, i64* @g_servertype, align 8
  %23 = load i64, i64* @UIAS_FAVORITES, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = call i32* @Menu_ItemAtCursor(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 0))
  %27 = icmp eq i32* %26, getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 1)
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call i32 (...) @ArenaServers_Remove()
  %30 = call i32 (...) @ArenaServers_UpdateMenu()
  %31 = load i32, i32* @menu_move_sound, align 4
  store i32 %31, i32* %2, align 4
  br label %46

32:                                               ; preds = %25, %21, %17
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @K_MOUSE2, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @K_ESCAPE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32
  %41 = call i32 (...) @ArenaServers_StopRefresh()
  %42 = call i32 (...) @ArenaServers_SaveChanges()
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @Menu_DefaultKey(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 0), i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %28, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ArenaServers_StopRefresh(...) #1

declare dso_local i32* @Menu_ItemAtCursor(i32*) #1

declare dso_local i32 @ArenaServers_Remove(...) #1

declare dso_local i32 @ArenaServers_UpdateMenu(...) #1

declare dso_local i32 @ArenaServers_SaveChanges(...) #1

declare dso_local i32 @Menu_DefaultKey(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
