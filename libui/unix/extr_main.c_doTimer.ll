; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_main.c_doTimer.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_main.c_doTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer = type { i32, i32 (i32)* }

@timers = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @doTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doTimer(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.timer*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to %struct.timer*
  store %struct.timer* %6, %struct.timer** %4, align 8
  %7 = load %struct.timer*, %struct.timer** %4, align 8
  %8 = getelementptr inbounds %struct.timer, %struct.timer* %7, i32 0, i32 1
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = load %struct.timer*, %struct.timer** %4, align 8
  %11 = getelementptr inbounds %struct.timer, %struct.timer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 %9(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @timers, align 4
  %17 = load %struct.timer*, %struct.timer** %4, align 8
  %18 = call i32 @g_hash_table_remove(i32 %16, %struct.timer* %17)
  %19 = load %struct.timer*, %struct.timer** %4, align 8
  %20 = call i32 @uiprivFree(%struct.timer* %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @g_hash_table_remove(i32, %struct.timer*) #1

declare dso_local i32 @uiprivFree(%struct.timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
