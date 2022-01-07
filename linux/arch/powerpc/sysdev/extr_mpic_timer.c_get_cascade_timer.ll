; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_get_cascade_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_get_cascade_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpic_timer = type { i32 }
%struct.timer_group_priv = type { i32 }

@MAX_TICKS = common dso_local global i64 0, align 8
@MAX_TICKS_CASCADE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpic_timer* (%struct.timer_group_priv*, i64)* @get_cascade_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpic_timer* @get_cascade_timer(%struct.timer_group_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.mpic_timer*, align 8
  %4 = alloca %struct.timer_group_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mpic_timer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.timer_group_priv* %0, %struct.timer_group_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* @MAX_TICKS, align 8
  %10 = load i64, i64* @MAX_TICKS_CASCADE, align 8
  %11 = mul nsw i64 %9, %10
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.mpic_timer* null, %struct.mpic_timer** %3, align 8
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.timer_group_priv*, %struct.timer_group_priv** %4, align 8
  %18 = call %struct.mpic_timer* @detect_idle_cascade_timer(%struct.timer_group_priv* %17)
  store %struct.mpic_timer* %18, %struct.mpic_timer** %6, align 8
  %19 = load %struct.mpic_timer*, %struct.mpic_timer** %6, align 8
  %20 = icmp ne %struct.mpic_timer* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.mpic_timer* null, %struct.mpic_timer** %3, align 8
  br label %34

22:                                               ; preds = %16
  %23 = load %struct.timer_group_priv*, %struct.timer_group_priv** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.mpic_timer*, %struct.mpic_timer** %6, align 8
  %26 = getelementptr inbounds %struct.mpic_timer, %struct.mpic_timer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_cascade_timer(%struct.timer_group_priv* %23, i64 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store %struct.mpic_timer* null, %struct.mpic_timer** %3, align 8
  br label %34

32:                                               ; preds = %22
  %33 = load %struct.mpic_timer*, %struct.mpic_timer** %6, align 8
  store %struct.mpic_timer* %33, %struct.mpic_timer** %3, align 8
  br label %34

34:                                               ; preds = %32, %31, %21, %15
  %35 = load %struct.mpic_timer*, %struct.mpic_timer** %3, align 8
  ret %struct.mpic_timer* %35
}

declare dso_local %struct.mpic_timer* @detect_idle_cascade_timer(%struct.timer_group_priv*) #1

declare dso_local i32 @set_cascade_timer(%struct.timer_group_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
