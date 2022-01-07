; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_StopRefresh.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_StopRefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64*, i32, i64 }

@g_arenaservers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@qfalse = common dso_local global i64 0, align 8
@ArenaServers_Compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ArenaServers_StopRefresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_StopRefresh() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 4), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %20

4:                                                ; preds = %0
  %5 = load i64, i64* @qfalse, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 4), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 0), align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 2), align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 1), align 8
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 2), align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 0), align 8
  br label %13

13:                                               ; preds = %8, %4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 3), align 8
  %15 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_arenaservers, i32 0, i32 2), align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ArenaServers_Compare, align 4
  %18 = call i32 @qsort(i32 %14, i64 %16, i32 4, i32 %17)
  %19 = call i32 (...) @ArenaServers_UpdateMenu()
  br label %20

20:                                               ; preds = %13, %3
  ret void
}

declare dso_local i32 @qsort(i32, i64, i32, i32) #1

declare dso_local i32 @ArenaServers_UpdateMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
