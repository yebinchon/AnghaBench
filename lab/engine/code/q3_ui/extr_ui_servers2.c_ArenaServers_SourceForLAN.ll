; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_SourceForLAN.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_SourceForLAN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_servertype = common dso_local global i32 0, align 4
@AS_LOCAL = common dso_local global i32 0, align 4
@AS_GLOBAL = common dso_local global i32 0, align 4
@AS_FAVORITES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArenaServers_SourceForLAN() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @g_servertype, align 4
  switch i32 %2, label %3 [
    i32 128, label %4
    i32 134, label %6
    i32 133, label %6
    i32 132, label %6
    i32 131, label %6
    i32 130, label %6
    i32 129, label %6
    i32 135, label %8
  ]

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i32, i32* @AS_LOCAL, align 4
  store i32 %5, i32* %1, align 4
  br label %10

6:                                                ; preds = %0, %0, %0, %0, %0, %0
  %7 = load i32, i32* @AS_GLOBAL, align 4
  store i32 %7, i32* %1, align 4
  br label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @AS_FAVORITES, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
